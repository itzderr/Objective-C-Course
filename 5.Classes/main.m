//
//  main.m
//  5. Classes
//
//  Created by Derrick Park on 2019-02-20.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

/*
 .h (header file - public interface)
 .m (implementation file - your implementation)
 
 Note: Sending a message to nil does not crash!
 Java lingo => 'Calling a method on a null object does not throw a NullPointerException!'
 */

#import <Foundation/Foundation.h>
#import "DateCalculator.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
//		* Default initializer
//		DateCalculator *calc = [DateCalculator new];
//		DateCalculator *calc = [[DateCalculator alloc] init];
		DateCalculator *calc = [[DateCalculator alloc] initWithMyAge:40 AndName:@"Johny"];
		
		
		NSLog(@"Age: %f", [calc myAge]);
		NSLog(@"Age: %f", calc.myAge); // Use .(dot) notation only when you're using property
		if ([calc canDateAPersonWithAge:18]) {
			NSLog(@"YES!");
		} else {
			NSLog(@"NO!");
		}
	}
	return 0;
}
