//
//  Company+SecretHacker.h
//  12.Runtime
//
//  Created by Derrick Park on 6/17/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import "Company.h"

NS_ASSUME_NONNULL_BEGIN

@interface Company (SecretHacker)

- (BOOL)shouldHireHacked:(Candidate *)candidate;

@end

NS_ASSUME_NONNULL_END
