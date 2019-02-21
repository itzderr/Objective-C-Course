//
//  main.m
//  1.DT-BOOL
//
//  Created by Derrick Park on 2019-02-16.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

// challenge
static BOOL different(int num1, int num2) {
	return num1 - num2;
}

int main(int argc, const char * argv[]) {
	// boolex
	bool cBool = true;
	BOOL obcBool = YES;
	NSLog(@"cBool: %d obcBool: %d", cBool, obcBool);
	
	cBool = false;
	obcBool = NO;
	NSLog(@"cBool: %d obcBool: %d", cBool, obcBool);
	
	cBool = 25;
	obcBool = 25;
	NSLog(@"cBool: %d obcBool: %d", cBool, obcBool);
	
	if (cBool) {
		NSLog(@"cBool is true");
	}
	
	if (obcBool) {
		NSLog(@"obcBool is true");
	}
	
	if (different(1, 2) == YES) {
		NSLog(@"Different!");
	} else {
		NSLog(@"NOT Different!");
	}
	
	if (different(1, 2)) {
		NSLog(@"Different!");
	} else {
		NSLog(@"NOT Different!");
	}

	return 0;
}


