//
//  NSString+WaterMark.m
//  ObjectiveC4D
//
//  Created by Derrick Park on 2019-02-22.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import "NSString+WaterMark.h"

@implementation NSString (WaterMark)

- (NSString *) watermark {
	return [@"CICCC " stringByAppendingString:self];
}

@end
