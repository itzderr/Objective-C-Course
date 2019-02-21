//
//  main.m
//  6. Protocols&DelegatePattern
//
//  Created by Derrick Park on 2019-02-20.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
#import "Miranda.h"
#import "Jack.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		Boss *boss = [Boss new];
		Miranda *miranda = [Miranda new];
		miranda = nil;
		[miranda calcTax];
		
		Jack *jack = [Jack new];
		boss.delegate = jack;
		
		[boss calcuateTax];
	}
	return 0;
}
