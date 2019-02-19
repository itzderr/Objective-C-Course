//
//  BoolExample.h
//  ObjectiveC4D
//
//  Created by Derrick Park on 2019-02-16.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

#ifndef BoolExample_h
#define BoolExample_h

// How BOOL is defined.
#if !defined(OBJC_HIDE_64) && TARGET_OS_IPHONE && __LP64__
typedef bool BOOL; // 64 bits
#else
typedef signed char BOOL; // 32 bits
#endif


#endif /* BoolExample_h */
