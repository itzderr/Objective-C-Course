//
//  main.m
//  4. Enum&Bitmasks
//
//  Created by Derrick Park on 2019-02-20.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

/*
 Enum "Enums are really just glorified integer constants"
 - Objective-C does support enum type from the C programming C99 standard
 - There's a better way (NS_ENUM)
   * you can specify the type
	 * benefits: type safety, compiler helps when using switch statements
 */

#import <Foundation/Foundation.h>

typedef NS_ENUM(int, VideoGameType) {
	VideoGameTypeRPG,
	VideoGameTypeStrategy,
	VideoGameTypeAction,
	VideoGameTypeFPS
};

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		VideoGameType type = VideoGameTypeRPG;
		
		NSLog(@"sizeof(type) = %lu value = %d", sizeof(type), type); // sizeof(int)
		
		switch (type) {
			case VideoGameTypeRPG:
				NSLog(@"RPG");
				break;
			case VideoGameTypeStrategy:
				NSLog(@"Strategy");
				break;
			case VideoGameTypeAction:
				NSLog(@"Action");
				break;
			case VideoGameTypeFPS:
				NSLog(@"FPS");
				break;
			default:
				break;
		}
	}
	return 0;
}
