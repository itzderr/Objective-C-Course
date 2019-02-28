//
//  main.m
//  10.Blocks
//
//  Created by Derrick Park on 2019-02-27.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BlockTester.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		BlockTester *block = [[BlockTester alloc] init];
		[block runTest4];
//		[block goPlaySoccerWithBlock:^(NSString * _Nonnull player) {
//			NSLog(@"%@", player);
//		}];
	}
	return 0;
}
