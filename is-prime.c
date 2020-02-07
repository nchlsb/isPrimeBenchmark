#include <stdio.h>
#include <math.h>

int is_prime(const long long n) {
	long long i;
	for(i = 2; i <= floor(sqrt(n)); i++) {
		if(n % i == 0) {
			return 0;
		}
	}

	return 1;
}

int main() {
	if(is_prime(10000000002065383)) {
		puts("True");
	} else {
		puts("False");
	}

	return 0;
}
