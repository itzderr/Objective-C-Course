//
//  DateCalculator.h
//  5. Classes
//
//  Created by Derrick Park on 2019-02-20.
//  Copyright © 2019 Derrick Park. All rights reserved.
//



#import <Foundation/Foundation.h>

@interface DateCalculator : NSObject
// 1. public properties
// Property Syntax
// @property (attributes, ...) type name;
@property (assign) float myAge;
@property (nonatomic, strong) NSString *name;
// nonatomic - non thread safety (more performant)
// atomic (default) - thread safe (overhead)

// 2. public methods
- (instancetype)initWithMyAge:(float) myAge AndName:(NSString *) name;
- (BOOL) canDateAPersonWithAge:(float) age;

@end
