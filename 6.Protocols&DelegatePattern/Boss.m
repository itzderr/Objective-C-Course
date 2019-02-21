//
//  Boss.m
//  6. Protocols&DelegatePattern
//
//  Created by Derrick Park on 2019-02-21.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import "Boss.h"

@implementation Boss

- (void) calcuateTax {
	float tax = [_delegate calcTax];
//	[_delegate actFunny];
	
	NSLog(@"You need to pay $ %f as tax this year", tax);
}

@end
