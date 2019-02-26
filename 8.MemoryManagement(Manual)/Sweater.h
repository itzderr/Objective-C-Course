//
//  Sweater.h
//  8.MemoryManagement(Manual)
//
//  Created by Derrick Park on 2019-02-25.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(unsigned char, SweaterType) {
	SweaterTypeGray,
	SweaterTypeNavy,
	SweaterTypeBlack,
};

@interface Sweater : NSObject

@property (assign) SweaterType type;
- (instancetype)initWithSweaterType:(SweaterType) type;

@end

NS_ASSUME_NONNULL_END
