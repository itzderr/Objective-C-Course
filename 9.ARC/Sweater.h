//
//  Sweater.h
//  9.ARC
//
//  Created by Derrick Park on 2019-02-25.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Person;
typedef NS_ENUM(unsigned char, SweaterType) {
	SweaterTypeGray,
	SweaterTypeNavy,
	SweaterTypeBlack,
};

@interface Sweater : NSObject

@property (assign) SweaterType type;
@property (nonatomic, weak) Person *owner;
- (instancetype)initWithSweaterType:(SweaterType) type;

@end

NS_ASSUME_NONNULL_END
