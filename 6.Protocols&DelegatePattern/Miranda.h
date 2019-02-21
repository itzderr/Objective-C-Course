//
//  Miranda.h
//  6. Protocols&DelegatePattern
//
//  Created by Derrick Park on 2019-02-21.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
// conforms to
@interface Miranda : NSObject <AccountantDelegate>

- (float) calcTax;
- (void) actFunny;
@end

