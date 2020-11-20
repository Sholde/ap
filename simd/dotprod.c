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
  
  for (unsigned long long i = 0; i < n; i += 4)
    {
      d[0] += a[i] * b[i];
      d[1] += a[i + 1] * b[i + 1];
      d[2] += a[i + 2] * b[i + 2];
      d[3] += a[i + 3] * b[i + 3];
    }
  
  if (! test)
    {
      unsigned long long n_4 = n - 4;

      for (unsigned long long i = n_4 + 1; i < n; ++i)
	  d[0] += a[i] * b[i];
    }

  return d[0] + d[1] + d[2] + d[3];
}

// vectors of 8 double
double dotprod_8x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[8] = {0.0};
  unsigned long long test = n % 8;

  for (unsigned long long i = 0; i < n; i += 8)
    {
      d[0] += a[i] * b[i];
      d[1] += a[i + 1] * b[i + 1];
      d[2] += a[i + 2] * b[i + 2];
      d[3] += a[i + 3] * b[i + 3];
      d[4] += a[i + 4] * b[i + 4];
      d[5] += a[i + 5] * b[i + 5];
      d[6] += a[i + 6] * b[i + 6];
      d[7] += a[i + 7] * b[i + 7];
    }

  if (! test)
    {
      unsigned long long n_8 = n - 8;

      for (unsigned long long i = n_8 + 1; i < n; ++i)
	  d[0] += a[i] * b[i];
    }
  
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
}

// vectors of 16 double
double dotprod_16x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[16] = {0.0};
  unsigned long long test = n % 16;

  for (unsigned long long i = 0; i < n; i += 16)
    {
      d[0] += a[i] * b[i];
      d[1] += a[i + 1] * b[i + 1];
      d[2] += a[i + 2] * b[i + 2];
      d[3] += a[i + 3] * b[i + 3];
      d[4] += a[i + 4] * b[i + 4];
      d[5] += a[i + 5] * b[i + 5];
      d[6] += a[i + 6] * b[i + 6];
      d[7] += a[i + 7] * b[i + 7];
      d[8] += a[i + 8] * b[i + 8];
      d[9] += a[i + 9] * b[i + 9];
      d[10] += a[i + 10] * b[i + 10];
      d[11] += a[i + 11] * b[i + 11];
      d[12] += a[i + 12] * b[i + 12];
      d[13] += a[i + 13] * b[i + 13];
      d[14] += a[i + 14] * b[i + 14];
      d[15] += a[i + 15] * b[i + 15];
    }

  if (! test)
    {
      unsigned long long n_16 = n - 16;

      for (unsigned long long i = n_16 + 1; i < n; ++i)
	  d[0] += a[i] * b[i];
    }
  
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
}

int main(int argc, char **argv)
{
  // Dynamic
  
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
  double res_8x = dotprod_8x(a, b, n);
  double res_16x = dotprod_16x(a, b, n);

  // Print result
  printf("res = %lf\n", res);
  printf("res_2x = %lf\n", res_2x);
  printf("res_4x = %lf\n", res_4x);
  printf("res_8x = %lf\n", res_8x);
  printf("res_16x = %lf\n", res_16x);

  // Free memory
  free(a);
  free(b);

  // Static
  n = SIZE;

  // Alloc the memory
  double *c = aligned_alloc(64, n * sizeof(double));
  double *d = aligned_alloc(64, n * sizeof(double));

  // Init arrays
  init(c, d, n);

  // Compute
  res = dotprod(c, d, n);
  res_2x = dotprod_2x(c, d, n);
  res_4x = dotprod_4x(c, d, n);
  res_8x = dotprod_8x(c, d, n);
  res_16x = dotprod_16x(c, d, n);

  // Print result
  printf("res = %lf\n", res);
  printf("res_2x = %lf\n", res_2x);
  printf("res_4x = %lf\n", res_4x);
  printf("res_8x = %lf\n", res_8x);
  printf("res_16x = %lf\n", res_16x);

  // Free memory
  free(c);
  free(d);

  return 0;
}
