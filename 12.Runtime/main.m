//
//  main.m
//  12.Runtime
//
//  Created by Derrick Park on 6/16/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Company.h"
#import "Candidate.h"
#import "Company+SecretHacker.h"
#import <objc/message.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    Candidate *candidate1 = [[Candidate alloc] initWithName:@"John" school:@"CICCC" yearsOfExperience:2];
    
    Company *google = [[Company alloc] initWithName:@"Google"];
    [google shouldHire:candidate1];
    
    Class company = [google class];
    Class superclass = class_getSuperclass(company);
    NSLog(@"Superclass of %@ is %@", NSStringFromClass(company), NSStringFromClass(superclass));
    
    SEL selector = @selector(shouldHire:);
    NSLog(@"Selector: %@", NSStringFromSelector(selector));
    
    Method method = class_getInstanceMethod(company, selector);
    NSLog(@"%d arguments", method_getNumberOfArguments(method)); // why 3?
    
    NSLog(@"Member of NSObject: %d", [google isMemberOfClass:[NSObject class]]);
    NSLog(@"Kind of NSObject: %d", [google isKindOfClass:[NSObject class]]);
    
    if ([google respondsToSelector:@selector(shouldHire:)]) {
      [google performSelector:@selector(shouldHire:) withObject:candidate1];
      /// More than 2 args
      /// Use: objc_msgSend(google, @selector(shouldHire:), candidate1, ...)
    }
    
    // c style function pointer casting ((const BOOL (*)(id, SEL, ...))objc_msgSend)(google, @selector(shouldHire:), candidate1);
    BOOL isHired = [objc_msgSend(google, @selector(shouldHire:), candidate1) boolValue]; // setting 'Enable strict checking of objc_msgSend Calls' to No
    printf("hired? %d", isHired);
    
    // Method Swizzling
    Method original = class_getInstanceMethod([company class], @selector(shouldHire:));
    Method replaced = class_getInstanceMethod([company class], @selector(shouldHireHacked:));
    method_exchangeImplementations(original, replaced);
    [google shouldHire:candidate1];
    NSLog(@"%lu", [google.employees count]);
    
  }
  return 0;
}
