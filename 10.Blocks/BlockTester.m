//
//  BlockTester.m
//  10.Blocks
//
//  Created by Derrick Park on 2019-02-27.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import "BlockTester.h"

@implementation BlockTester

- (void) runTest1 {
	// MARK: 1.Creating and calling a block
	void (^MyBlock)(id, NSUInteger, BOOL *) = ^(id obj, NSUInteger index, BOOL *stop) {
		NSLog(@"Video game: %@", (NSString *) obj);
	};
	BOOL stop;
	MyBlock(@"Mario", 0, &stop);
}

- (void) runTest2 {
	// MARK: 2. Passing a block to a method
	NSArray *names = @[@"Luke", @"Jedi", @"Ronaldo"];
	[names enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
		NSLog(@"%@", (NSString *)obj);
	}];
}

- (void) runTest3 {
	// MARK: 3. Inline
	NSArray *names = @[@"Luke", @"Jedi", @"Ronaldo", @"Beckham", @"Messi", @"Rooney"];
	NSString *firstLetter = @"R";
	__block int startsWithR = 0;
	[names enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
		NSString *player = obj;
		if ([firstLetter isEqualToString:[player substringToIndex:1]]) {
			startsWithR++;
		}
	}];
	NSLog(@"R: %d", startsWithR);
}

- (void) runTest4 {
	// MARK: 5. retain cycle
//	__weak BlockTester *this = self;
	[self goPlaySoccerWithBlock:^(NSString * _Nonnull player) {
		[self party];
	}];
}

- (void) goPlaySoccerWithBlock:(void (^)(NSString *player)) block {
	// MARK: 4. Calling a block passed as a parameter
	self.block = block;
	[self performSelector:@selector(pickPlayer)];
}

- (void) pickPlayer {
	NSArray *names = @[@"Luke", @"Jedi", @"Ronaldo", @"Beckham", @"Messi", @"Rooney"];
	NSUInteger index = arc4random_uniform((int)names.count);
	self.block(names[index]);
}

- (void) party {
	NSLog(@"Yeah!");
}

- (void)dealloc {
	NSLog(@"deallocted.");
}

@end
