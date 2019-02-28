//
//  BlockTester.h
//  10.Blocks
//
//  Created by Derrick Park on 2019-02-27.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlockTester : NSObject

@property (nonatomic, copy) void (^block)(NSString *);

- (void) runTest1;
- (void) runTest2;
- (void) runTest3;
- (void) runTest4;

- (void) goPlaySoccerWithBlock:(void (^)(NSString *player)) block;

@end

NS_ASSUME_NONNULL_END
