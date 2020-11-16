#include <stdlib.h>
#include <stdio.h>

#define ARGS 1

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
      b[i] = 0.001;
    }
}

// Baseline
double dotprod(double *restrict a, double *restrict b, unsigned long long n)
{
  double d = 0.0;
  
  for (unsigned long long i = 0; i < n; i++)
    d += a[i] * b[i];
  
  return d;
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

  // Print result
  printf("res = %lf\n", res);

  // Free memory
  free(a);
  free(b);
  
  return 0;
}
