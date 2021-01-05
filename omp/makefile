all: triad

triad: triad_omp.c
	gcc -O2 -fopenmp -Wall triad_omp.c -o triad_omp

clean:
	rm -Rf *~ triad_omp
