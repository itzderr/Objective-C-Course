//
//  DateCalculator.m
//  5. Classes
//
//  Created by Derrick Park on 2019-02-20.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

/*
 Method Name Syntax
 	 1. - instance method(-)
	    - class method(+)
 	 2. return type
   3. method name: (there could be several parts)
   4. param type
	 5. param name
 */

#import "DateCalculator.h"
@interface DateCalculator () {
	// * private properties
	// * private methods
}
@end

@implementation DateCalculator {
	// * private instance variables
	// _var <- (convention) instance variables
}

// implement methods
- (instancetype)initWithMyAge:(float) myAge AndName:(NSString *) name
{
	self = [super init];
	if (self) {
		_myAge = myAge;
		_name = name;
//		self.myAge = myAge; // actually calling a setter
//		[self setMyAge:myAge];
		
	}
	return self;
}

- (BOOL) canDateAPersonWithAge:(float) age {
	return (_myAge / 2 + 7) > age;
}


@end
