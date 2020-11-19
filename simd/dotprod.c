#include <stdlib.h>
#include <stdio.h>

#define ARGS 1
#define SIZE 100

// Parse arguments
unsigned long long parse_args(int argc, char **argv)
{
  if (argc != 2)
    exit(ARGS);

  return strtoll(argv[1], NULL, 10);
}

// Init the arrays
static void init(double *restrict a, double *restrict b, unsigned long long n)
{
  for (unsigned long long i = 0; i < n; i++)
    {
      a[i] = 0.1;
      b[i] = 1.0;
    }
}

// Baseline
double dotprod(double *restrict a, double *restrict b, unsigned long long n)
{
  double d = 0.0;
  
  for (unsigned long long i = 0; i < n; ++i)
    d += a[i] * b[i];
  
  return d;
}

// vectors of 2 double
double dotprod_2x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[2] = {0.0};
  

  if (n & 1)
    {
      unsigned long long n_1 = n - 1;
      
      for (unsigned long long i = 0; i < n_1; i += 2)
	{
	  d[0] += a[i] * b[i];
	  d[1] += a[i + 1] * b[i + 1];
	}
      
      return d[0] + d[1] + a[n-1] * b[n-1];
    }
  else
    {
      for (unsigned long long i = 0; i < n; i += 2)
	{
	  d[0] += a[i] * b[i];
	  d[1] += a[i + 1] * b[i + 1];
	}

      return d[0] + d[1];
    }
}

// vectors of 4 double
double dotprod_4x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[4] = {0.0};
  unsigned long long test = n % 4;

  if (! test)
    {
      for (unsigned long long i = 0; i < n; i += 4)
	{
	  d[0] += a[i] * b[i];
	  d[1] += a[i + 1] * b[i + 1];
	  d[2] += a[i + 2] * b[i + 2];
	  d[3] += a[i + 3] * b[i + 3];
	}
    }
  else
    {
      unsigned long long n_4 = n - 4;
      for (unsigned long long i = 0; i < n_4; i += 4)
	{
	  d[0] += a[i] * b[i];
	  d[1] += a[i + 1] * b[i + 1];
	  d[2] += a[i + 2] * b[i + 2];
	  d[3] += a[i + 3] * b[i + 3];
	}

      for (unsigned long long i = n_4 + 1; i < n; ++i)
	  d[0] += a[i] * b[i];
    }
  return d[0] + d[1] + d[2] + d[3];
}

int main(int argc, char **argv)
{
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
  double *b = aligned_alloc(64, n * sizeof(double));

  // Init arrays
  init(a, b, n);

  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);
  double res_4x = dotprod_4x(a, b, n);

  // Print result
  printf("res = %lf\n", res);
  printf("res_2x = %lf\n", res_2x);
  printf("res_4x = %lf\n", res_4x);

  // Free memory
  free(a);
  free(b);
  
  return 0;
}
