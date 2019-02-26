//
//  Sweater.m
//  8.MemoryManagement(Manual)
//
//  Created by Derrick Park on 2019-02-25.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import "Sweater.h"

@implementation Sweater
- (instancetype)initWithSweaterType:(SweaterType) type {
	if ((self = [super init])) {
		_type = type;
	}
	return self;
}

- (NSString *)description {
	switch (_type) {
		case SweaterTypeGray:
			return @"Gray Sweater";
		case SweaterTypeNavy:
			return @"Navy Sweater";
		case SweaterTypeBlack:
			return @"Black Sweater";
	}
}

- (void) dealloc {
	// usually you will dealloc all instance variables
	NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
	[super dealloc];
}
@end
