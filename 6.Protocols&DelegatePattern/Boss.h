//
//  Boss.h
//  6. Protocols&DelegatePattern
//
//  Created by Derrick Park on 2019-02-21.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AccountantDelegate
@required
- (float) calcTax;
@optional
- (void) actFunny;
@end

@interface Boss : NSObject

@property (nonatomic, strong) id<AccountantDelegate> delegate;
- (void) calcuateTax;

@end

