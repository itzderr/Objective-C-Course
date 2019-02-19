//
//  main.m
//  2.DT-float
//
//  Created by Derrick Park on 2019-02-16.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

/*
 Floating Point Data Types
 Decimal point numbers: 3.14, 123.456
 Useful to represent very large numbers: 1.34 * (2^60)
         32-bit size       64-bit size
 float        4               4
 double       8               8
 CGFloat      4               8
 (Be careful when you're casting CGFloat to float)
 
 Similar best practices as BOOL
 - CGFloat for interacting with Apple code, or if you want most optimal precision for the platform
 - float / double if you want to specify precisely what you need, or portability (C/C++ Library)
 
 Floating Point Internals (Simplified)
 Sign Mantissa x Base(2) ^ Exponent (www.h-schmidt.net/FloatConverter)
 Mantissa : significant digits
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		float f = M_PI; // 3.14xxxx
		double d = M_PI;
		CGFloat cgf = M_PI;

		NSLog(@"float: %.12f (%lu bytes)", f, sizeof(f));
		NSLog(@"double: %.12f (%lu bytes)", d, sizeof(d));
		NSLog(@"CGFloat: %.12f (%lu bytes)", cgf, sizeof(cgf));
		NSLog(@"Error: %.12f", ABS((double)f - d));


		float oneThird = 1 / 3; // 1.0 / 3
		NSLog(@"oneThird: %f", oneThird);

		float initial = 0.1;
		float second = initial / 3;
		second += initial;
		second += initial;

		NSLog(@"initial: %.12f", initial);
		NSLog(@"second: %.12f", second);
		NSLog(@"Error: %.12f", ABS(f-initial));

		if (second == initial) {
			NSLog(@"Match! :)");
		} else {
			NSLog(@"No Match! :(");
		}

		float tolerance = FLT_EPSILON;
		if (ABS(second - initial) < tolerance) {
			NSLog(@"Match! :)");
		} else {
			NSLog(@"No Match! :(");
		}
		
	}
	return 0;
}

// Challenge - What went wrong here?
// Why it is a bad idea to use float to represent currencies.
void float_challege() {
	float account1 = 100.00;
	float account2 = 0.00;
	float transferAmount = 0.1;
	
	for(int i = 0; i < 30; i++) {
		account1 -= transferAmount;
		account2 += transferAmount;
	}
	
	NSLog(@"Account1: %f", account1);
	NSLog(@"Account2: %f", account2);
	NSLog(@"Sum: %f", account1 + account2);;
}
