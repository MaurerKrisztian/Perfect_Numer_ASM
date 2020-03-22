#include <stdio.h>

extern int perfectNumber(int szam);

int main() {
	int szam;

	printf("Szam = ");
	scanf("%d", &szam);

	if(perfectNumber(szam)) {
		printf("%d tokeletes szam \n", szam);
	}else {
		printf("%d nem tokeletes szam \n", szam);
	}
}
