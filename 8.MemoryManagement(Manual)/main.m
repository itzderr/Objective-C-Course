//
//  main.m
//  8.MemoryManagement(Manual)
//
//  Created by Derrick Park on 2019-02-25.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Sweater.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		Person *derr = [[Person alloc] initWithName:@"Derrick"];
		Person *leo = [[Person alloc] initWithName:@"Leo"];
		// derr --> @Person(@"Derrick")    +1
		// leo  --> @Person(@"Leo")        +1
		
		Sweater *navySweater = [[Sweater alloc] initWithSweaterType:SweaterTypeNavy];
		Sweater *blackSweater = [[Sweater alloc] initWithSweaterType:SweaterTypeBlack];
		// navySweater   --> @Sweater(SweaterTypeNavy)         +1
		// blackSweater  --> @Sweater(SweaterTypeBlack)        +1
		
		derr.sweater = blackSweater;
		leo.sweater = navySweater;
		// sweater property(retain) will increment the ref count
		// derr.sweater   --> @Sweater(SweaterTypeBlack)       +2
		// leo.sweater    --> @Sweater(SweaterTypeNavy)        +2
		
		[navySweater release];
		[blackSweater release];
		// derr.sweater   --> @Sweater(SweaterTypeBlack)       +1
		// leo.sweater    --> @Sweater(SweaterTypeNavy)        +1
		
		leo.sweater = blackSweater;
		// derr.sweater   -->
		//                    @Sweater(SweaterTypeBlack)       +2
		// leo.sweater    -->
		derr.sweater = nil;
		// derr.sweater   --> nil
		// leo.sweater    --> @Sweater(SweaterTypeBlack)       +1

		NSString *quote = [derr quote]; // autorelease object
		NSLog(@"Quote: %@", quote);

		// clean up derr and leo (memory leak, check product -> profile
		[derr release];
		[leo release];
		
	}
	
	return 0;
}
