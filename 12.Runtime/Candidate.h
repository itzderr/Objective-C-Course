//
//  Candidate.h
//  12.Runtime
//
//  Created by Derrick Park on 6/17/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Candidate : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *school;
@property (nonatomic, assign) NSUInteger yearsOfExperience;

- (instancetype)initWithName:(NSString *)name school:(NSString *)school yearsOfExperience:(NSUInteger) yearsOfExperience;

@end

NS_ASSUME_NONNULL_END
