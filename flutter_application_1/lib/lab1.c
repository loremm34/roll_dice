#include <stdio.h>
#include <math.h>

double distance(double t) {
	return pow(t, 3 - sqrt(t));
}

double velocity(double t) {
	return (3 - 1/(2*sqrt(t))) * pow(t, 2 - sqrt(t));
}

int main() {
	double T;
    
	printf("Enter the time T: ");
	scanf("%lf", &T);
    
	double dist = distance(T);
	double vel = velocity(T);
    
	printf("Distance at time %lf: %lf\n", T, dist);
	printf("Velocity at time %lf: %lf\n", T, vel);
    
	return 0;
}
