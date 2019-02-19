//
//  integer.h
//  ObjectiveC4D
//
//  Created by Derrick Park on 2019-02-18.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#ifndef integer_h
#define integer_h

#if __LP64__ || TARGET_OS_WIN32 || NS_BUILD_32_LIKE_64
typedef long NSInteger;
typedef unsigned long NSUInteger;
#else
typedef int NSInteger;
typedef unsigned int NSUInteger;
#endif


#endif /* integer_h */
