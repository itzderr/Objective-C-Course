#  Objective C - Categories

## Categories?
- Categories add new methods to existing classes - without subclassing
- "A way to extend another class with additional methods"
- Caveat: You cannot add data to a class (only methods)

## Syntax
- Naming Convention for file name:  `ClassToExtend+CategoryName(.h, .m)`

```
// .h
#import "ClassToExtend.h"
@interface ClassToExtend (CategoryName)

// define new methods

@end

// .m
#import "ClassToExtend+CategoryName.h"
@implementation ClassToExtend (CategoryName)

// implement new methods

@end

```
