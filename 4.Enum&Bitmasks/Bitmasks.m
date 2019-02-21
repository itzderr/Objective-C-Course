//
//  Bitmasks.m
//  4. Enum&Bitmasks
//
//  Created by Derrick Park on 2019-02-20.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSInteger, EntityCategory){
	EntityCategoryPlayer    = 1 << 0,
	EntityCategoryEnemy     = 1 << 1,
	EntityCategotyAsteroid  = 1 << 2,
	EntityCategoryAlien     = 1 << 3,
};

static EntityCategory entity = EntityCategoryAlien | EntityCategoryPlayer;

void isPlayerOrEnemy(EntityCategory entity) {
	if (entity & EntityCategoryPlayer) {
		NSLog(@"Player");
	} else if (entity & EntityCategoryEnemy) {
		NSLog(@"Enemy");
	}
}
