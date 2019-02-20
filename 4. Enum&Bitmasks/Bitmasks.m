//
//  Bitmasks.m
//  4. Enum&Bitmasks
//
//  Created by Derrick Park on 2019-02-20.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

/*
 	Bitmasks
 - Treat a type as a series of on/off flags (booleans)
 - Efficiently store a large series of booleans
 
   8 bits
   0 0 0 0 0 0 0 0
 
 - can still do things the old way (C) - bit shifting
 i.e.
 static const NSInteger EntityCategoryPlayer = 1 << 0;
 static const NSInteger EntityCategoryAsteroid = 1 << 1;
 static const NSInteger EntityCategoryAlien = 1 << 2;
 
 - better way (NS_OPTIONS)
 
 */

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
