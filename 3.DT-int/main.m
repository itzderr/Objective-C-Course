//
//  main.m
//  3.DT-int
//
//  Created by Derrick Park on 2019-02-18.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

/*
 	Integers
 - Whole numbers: 1, 2, 3, 1000000, ...
 - Declaration:
 		- int myInt = 32;
 - Integers can be signed or unsigned
 - more bytes == larger range
 - Three kinds of integers types in iOS
 	    - Architecture-dependent types
 			- Explicit sized types
 			- Apple types
 
 (Arch Dependent)
 +-----------+--------+--------+
 |   type    | 32 bit | 64 bit |
 +-----------+--------+--------+
 |   char    |    1   |    1   |
 |   short   |    2   |    2   |
 |   int     |    4   |    4   |
 |   long    |    4   |    8   |
 | long long |    8   |    8   |
 +-----------------------------+
 (Apple)
 +------------+--------+--------+
 |   type     | 32 bit | 64 bit |
 +------------+--------+--------+
 | NSInteger  |    4   |    8   |
 | NSUInteger |    4   |    8   |
 +------------------------------+
 (Explicit Data types) - regardless of arch
 +-----------+--------+--------+
 |   type    | 32 bit | 64 bit |
 +-----------+--------+--------+
 |   int8_t  |    1   |    1   |
 |  int16_t  |    2   |    2   |
 |  int32_t  |    4   |    4   |
 |  int64_t  |    8   |    8   |
 +-----------------------------+
 
 Best Practices
 NSInteger
    - when interacting with Apple Code
    - public class APIs to conform with Apple standards
    - when want native integer size of architecture
 Arch dependent or explicit types
		- Explicit when want specific sized type (i.e. network programming)
		- arch dependent when size not important (loops)
    - when optimizing for portability (esp. C/C++ Lib Code)
    - Avoiding memory bloat (Not always 8 bytes(NSInteger))
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	
	@autoreleasepool {
		int myInt = 32; // %d
		short myShort = 20; // %hd
		char myChar = 10; // %c
		// %u : unsigned int
		// %x %X : hexa
		// %o %O : Octal
		NSLog(@"%d %hd %c", myInt, myShort, myChar);
		
		NSInteger nsInt = 10;
		NSUInteger nsUInt = 10;
		NSLog(@"%ld %lx", (long) nsInt, (long) nsInt);
		NSLog(@"%lu %lX", (unsigned long) nsUInt, (unsigned long) nsUInt);
	}
	return 0;
}
