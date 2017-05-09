// lab2.cpp : Defines the entry point for the console application.
//
#define rdtsc __asm __emit 0fh __asm __emit 031h
#define cpuid __asm __emit 0fh __asm __emit 0a2h

#include "stdafx.h"
#include <stdlib.h>

	unsigned cycles_high1=0, cycles_low1=0, cpuid_time=0, cupid_time=0;
	unsigned cycles_high2=0, cycles_low2=0;
	unsigned __int64 temp_cycles1=0, temp_cycles2=0;
	__int64 total_cycles=0;
	float seconds;
	short int i=2;
	int b[]={22,4,11,5,3,6,22,7,3,3,44,1,5,66};
	static int length = sizeof( b )/sizeof(b[0]);
	void sort(int a[]);
int _tmain(int argc, _TCHAR* argv[])
{
	/*
	int var1,var2, time_low, time_high;
	var1= 3;
	__asm{

	rdtsc
	mov time_high, edx
	mov time_low, eax
	//add ebx, ecx
	//add ebx, var1
	//mul var1
	//fdiv var1
	//fsub var1
	rdtsc
	sub eax, time_low
	sbb edx, time_high
	mov time_high, edx
	mov time_low, eax 
	
	}

	printf("%d %d", time_low, time_high);
	getchar();
	*/
	int *array;
	array=(int *) malloc(length*sizeof(int));
	for(int i = 0; i<length; i++)
	{
		array[i] = b[i];
	}
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
	 mov cupid_time, eax
	 popad
	}
	cycles_high1=0;
	cycles_low1=0;
	//Measure the code sequence
	__asm {
	 pushad
	 CPUID
	 RDTSC
	 mov cycles_high1, edx
	 mov cycles_low1, eax 
	 popad
	}
	sort(array);
	//Section of code to be measured
	__asm {
	 pushad
	 CPUID
	 RDTSC
	 mov cycles_high2, edx
	 mov cycles_low2, eax
	 popad
	}
	temp_cycles1 = ((unsigned __int64)cycles_high1 << 32) | cycles_low1;
	temp_cycles2 = ((unsigned __int64)cycles_high2 << 32) | cycles_low2;
	total_cycles = temp_cycles2 - temp_cycles1 - cpuid_time; 
	seconds = total_cycles/2.9;
	printf("Total cycles: %lu and: %d seconds",total_cycles, seconds);
	getchar();
	return 0;

	
}

void sort(int a[]){
		
	for(int i = 0; i<length-1;i++){
			
		for(int j = i+1; j<length;j++)
		{
			if(a[i]>a[j]){
				
				int aux = a[i];
				a[i]=a[j];
				a[j]=aux;
			}

		}
	}
}

