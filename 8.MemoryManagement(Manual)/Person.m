//
//  Person.m
//  8.MemoryManagement(Manual)
//
//  Created by Derrick Park on 2019-02-25.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
	if ((self = [super init])) {
		_name = [name retain]; // manual management
		_sweater = nil;
	}
	return self;
}

- (NSString *)quote {
	// Does not starts with init or copy
	return [[[NSString alloc] initWithFormat:@"%@ says: Give me my sweater back!", _name] autorelease];
}

- (NSString *)description {
	if (_sweater) {
		return [NSString stringWithFormat:@"%@ (wearing %@)", _name, _sweater];
	} else {
		return _name;
	}
}

- (void) dealloc {
	NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
	[_sweater release];
	_sweater = nil;
	[_name release];
	_name = nil;
	[super dealloc];
}

@end
