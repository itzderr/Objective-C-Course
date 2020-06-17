//
//  Company+SecretHacker.m
//  12.Runtime
//
//  Created by Derrick Park on 6/17/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import "Company+SecretHacker.h"

@implementation Company (SecretHacker)

- (BOOL)shouldHireHacked:(Candidate *)candidate {
  if ([candidate.school isEqualToString:@"CICCC"]) {
    [self.employees addObject:candidate];
    NSLog(@"Congrats!! %@", candidate.name);
    return YES;
  }
  NSLog(@"Sorry to inform you...blah blah blah");
  return NO;
}

@end
