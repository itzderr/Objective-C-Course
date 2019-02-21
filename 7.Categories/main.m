//
//  main.m
//  7. Categories
//
//  Created by Derrick Park on 2019-02-21.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+WaterMark.h"

//void Derrick() {
//	NSLog(@"%s", __FUNCTION__); // get function name
//}

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		NSLog(@"%@", [@"Derrick" watermark]);
	}
	return 0;
}
