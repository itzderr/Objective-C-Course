//
//  Candidate.m
//  12.Runtime
//
//  Created by Derrick Park on 6/17/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import "Candidate.h"

@implementation Candidate

- (instancetype)initWithName:(NSString *)name school:(NSString *)school yearsOfExperience:(NSUInteger) yearsOfExperience
{
  self = [super init];
  if (self) {
    _name = name;
    _school = school;
    _yearsOfExperience = yearsOfExperience;
  }
  return self;
}

@end
