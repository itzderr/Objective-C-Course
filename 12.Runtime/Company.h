//
//  Company.h
//  12.Runtime
//
//  Created by Derrick Park on 6/17/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Candidate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Company : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic) NSMutableSet<Candidate *> *employees;

- (instancetype)initWithName:(NSString *)name;
- (BOOL)shouldHire:(Candidate *)candidate;

@end

NS_ASSUME_NONNULL_END
