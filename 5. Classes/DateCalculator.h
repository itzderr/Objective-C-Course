//
//  DateCalculator.h
//  5. Classes
//
//  Created by Derrick Park on 2019-02-20.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

/*
 Property Attributes
 - strong : strong pointer (increment ref count +1)
 - weak : weak pointer (no ref count)
 - assign (default): primitive types
 - nonatomic : non thread safety (use this, no overhead)
 - atomic (default) : thread safety feature
 - copy : copying contents
 - readonly, readwrite (default)
 - getter=name
 - setter=name
 */

#import <Foundation/Foundation.h>

@interface DateCalculator : NSObject
// 1. public properties
// Property Syntax
//@property (attributes, ...) type name;
@property (assign) float myAge;
@property (nonatomic, strong) NSString *name;
// nonatomic - non thread safety (more performant)
// atomic (default) - thread safe (overhead)

// 2. public methods
- (instancetype)initWithMyAge:(float) myAge AndName:(NSString *) name;
- (BOOL) canDateAPersonWithAge:(float) age;

@end
