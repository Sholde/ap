#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ALIGN 64

static void init(double *restrict a, unsigned long long n, double d)
{
#pragma omp parallel for
  for (unsigned long long i = 0; i < n; ++i)
    a[i] = d;
}

static void triad(double *restrict a, double *restrict b, double *restrict c, unsigned long long n)
{
#pragma omp target teams distribute parallel for simd \
  map(a[0:n], b[0:n], c[0:n])
  for (unsigned long long i = 0; i < n; ++i)
    c[i] += a[i] * b[i];
}

int main(int argc, char **argv)
{
  if (argc != 2)
    return printf("Usage: %s [NUMBER]\n", argv[0]), 1;
  
  unsigned long long n = strtoll(argv[1], NULL, 10);

  double *restrict a = aligned_alloc(ALIGN, n * sizeof(double));
  double *restrict b = aligned_alloc(ALIGN, n * sizeof(double));
  double *restrict c = aligned_alloc(ALIGN, n * sizeof(double));

  init(a, n, 1.0);
  init(b, n, 1.0);
  init(c, n, 1.0);

  triad(a, b, c, n);

  for (int i = 0; i < 10; ++i)
    printf("%lf\n", c[i]);

  free(a);
  free(b);
  free(c);
  
  return 0;
}
