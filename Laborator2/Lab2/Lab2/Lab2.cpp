// Lab2.cpp : Defines the entry point for the console application.
// CPU performance monitoring using the Time - Stamp Counter register
//

#include "stdafx.h"
#include <stdio.h>
#include <stdlib.h>

#define rdtsc __asm __emit 0fh __asm __emit 031h
#define cpuid __asm __emit 0fh __asm __emit 0a2h

unsigned cycles_high1 = 0, cycles_low1 = 0, cpuid_time = 0;
unsigned cycles_high2 = 0, cycles_low2 = 0, var;
unsigned __int64 temp_cycles1 = 0, temp_cycles2 = 0;
__int64 total_cycles = 0;

void sort_array(unsigned int *a, int n);

int n = 1000, i;
unsigned int b[100];
unsigned int *c; 

void generate()
{
	srand(0);
	int i;

	c = (unsigned int *)malloc(sizeof(unsigned int) * n);
	for (i = 0; i < n; i++) {
		c[i] = rand();
	}
}

void measure_instruction()
{
	//compute the CPUID overhead
	__asm {
		pushad
		CPUID
		RDTSC
		mov cycles_high1, edx
		mov cycles_low1, eax
		popad
		pushad
		CPUID
		RDTSC
		popad
		pushad
		CPUID
		RDTSC
		mov cycles_high1, edx
		mov cycles_low1, eax
		popad
		pushad
		CPUID
		RDTSC
		popad
		pushad
		CPUID
		RDTSC
		mov cycles_high1, edx
		mov cycles_low1, eax
		popad
		pushad
		CPUID
		RDTSC
		sub eax, cycles_low1
		mov cpuid_time, eax
		popad
	}

	cycles_high1 = 0;
	cycles_low1 = 0;

	//Measure the code sequence
	__asm {
		pushad
		CPUID
		RDTSC
		mov cycles_high1, edx
		mov cycles_low1, eax
		popad
	}

	//Section of code to be measure
	for (int i = 0; i < 100; i++)
	{
		__asm {
			// add value in variable
			//add var, ecx

			// add using registers
			//add eax, ecx

			// multiply
			//mul [var]

			// FDIV
			//fdiv st(0), st(3)

			//FSUB
			//FSUB ST(0), ST(3)
		}
		//sort
		sort_array(c, n);
	}
	__asm {
		pushad
		CPUID
		RDTSC
		mov cycles_high2, edx
		mov cycles_low2, eax
		popad
	}
}

void sort_array(unsigned int *a, int n)
{
	int i, j, aux;

	for (i = 0; i < n - 1; i++)
	{
		for (j = i + 1; j < n; j++)
		{
			if (a[i] < a[j])
			{
				aux = a[i];
				a[i] = a[j];
				a[j] = aux;
			}
		}
	}
}

int main()
{

	generate();
	measure_instruction();

	temp_cycles1 = ((unsigned __int64)cycles_high1 << 32) | cycles_low1;
	temp_cycles2 = ((unsigned __int64)cycles_high2 << 32) | cycles_low2;
	total_cycles = temp_cycles2 - temp_cycles1 - cpuid_time;

	total_cycles = total_cycles / 100;

	printf("Total cycles: %d\n", total_cycles);
	return 0;
}

