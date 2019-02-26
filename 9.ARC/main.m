//
//  main.m
//  9.ARC
//
//  Created by Derrick Park on 2019-02-25.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sweater.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		// MARK: ARC
//		Person *derr = [[Person alloc] initWithName:@"Derrick"];
//		Person *leo = [[Person alloc] initWithName:@"Leo"];
//		// derr --> @Person(@"Derrick")    +1
//		// leo  --> @Person(@"Leo")        +1
//		Sweater *navySweater = [[Sweater alloc] initWithSweaterType:SweaterTypeNavy];
//		Sweater *blackSweater = [[Sweater alloc] initWithSweaterType:SweaterTypeBlack];
//		// navySweater   --> @Sweater(SweaterTypeNavy)         +1
//		// blackSweater  --> @Sweater(SweaterTypeBlack)        +1
//		derr.sweater = blackSweater;
//		leo.sweater = navySweater;
//		// sweater property(retain) will increment the ref count
//		// derr.sweater   --> @Sweater(SweaterTypeBlack)       +2
//		// leo.sweater    --> @Sweater(SweaterTypeNavy)        +2
//
//
//		leo.sweater = blackSweater;
//		// derr.sweater   -->
//		//                    @Sweater(SweaterTypeBlack)       +2
//		// leo.sweater    -->
//
//		derr.sweater = nil;
//		// derr.sweater   --> nil
//		// leo.sweater    --> @Sweater(SweaterTypeBlack)       +1
//
//		NSString *quote = [derr quote];
//		NSLog(@"Quote: %@", quote);
		
		// MARK: Retain Cycle
		Person *p1 = [[Person alloc] initWithName:@"Person1"];
		Sweater *bs = [[Sweater alloc] initWithSweaterType:SweaterTypeBlack];
		p1.sweater = bs;
		bs.owner = p1;
		p1 = nil;
		bs = nil;
		
		
	}
	return 0;
}
