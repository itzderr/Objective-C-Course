//
//  Person.h
//  8.MemoryManagement(Manual)
//
//  Created by Derrick Park on 2019-02-25.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Sweater; // pre-declare, telling the compiler it exists. (faster compilation)

@interface Person : NSObject

@property (nonatomic, retain) Sweater *sweater;
@property (nonatomic, retain) NSString *name;

- (instancetype)initWithName:(NSString *)name;
- (NSString *)quote;

@end

NS_ASSUME_NONNULL_END
