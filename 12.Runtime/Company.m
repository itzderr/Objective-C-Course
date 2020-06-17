//
//  Company.m
//  12.Runtime
//
//  Created by Derrick Park on 6/17/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import "Company.h"

@interface Company ()

@end

@implementation Company

- (instancetype)initWithName:(NSString *)name
{
  self = [super init];
  if (self) {
    _name = name;
    _employees = [NSMutableSet set];
  }
  return self;
}

- (BOOL)shouldHire:(Candidate *)candidate {
  if (candidate.yearsOfExperience > 7) {
    [_employees addObject:candidate];
    NSLog(@"Congrats!! %@", candidate.name);
    return YES;
  } else {
    NSLog(@"Sorry to inform you...blah blah blah");
    return NO;
  }
}


@end
