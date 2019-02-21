//
//  main.m
//  3.DT-int
//
//  Created by Derrick Park on 2019-02-18.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

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
