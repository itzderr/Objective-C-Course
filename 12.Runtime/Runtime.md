# Runtime
## Introspection
* `Class`: Object representing class
  - Get with `[object class]` or `NSClassFromString`
* `Selector (SEL)`: Internal id for method name
  - Get with `@selector` or `NSSelectorFromString`
* `Method`: Object representing method
  - Get with `class_getInstanceMethod`

## Introspection (useful in app dev)
* `isMemberOfClass`: is it an instance of the class?
* `isKindOfClass`: is it an instance of the class (or an inherited class)?
* `respondsToSelector`: does it have the method?
* `perfromSelector`: call the method


## Message Passing
```
ClassName *myObj = [[ClassName alloc] init];
[myObj doItWithA:a];
    |
    |
 compiler rewrites
    |
    V
objc_msgSend(myObj, @selector(doItWithA:), 1);
```
- objc_msgSend(...) looks at the dispatch table (for the class)

|  dispatch table  | address(code)  |
|---|---|
| @selector(doIt)  |  0xF1A321BC |
| @selector(doItWithA:) | 0xF1A321BD |

> This is how categories (extensions) work!
- We can do method swizzling! (the process of changing the implementation of an existing selector, basically by changing the addresses)
