//
//  Person.h
//  9.ARC
//
//  Created by Derrick Park on 2019-02-25.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Sweater; // pre-declare, telling the compiler it exists. (faster compilation)

@interface Person : NSObject

@property (nonatomic, strong) Sweater *sweater;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name;
- (NSString *)quote;

@end

NS_ASSUME_NONNULL_END
