#  Objective-C Runtime

## Introspection (get info about your code at runtime)
`#import <objc/message.h>`

### Class: instance representing class
- Get with [object class] or NSClassFromString
- NSStringFromClass to get the class name as String
- class: special object gives you info about the class of another object

### Selector (SEL): Internal id for method name
- Get with @selector() or NSSelectorFromString
- NSStringFromSelector to get the selector as String
- There are many methods in Obj-C that takes selector(SEL) as parameter

### Method: instance representing method
- Get with class_getInstanceMethod(Class, SEL);
- ex) method_getNumberOfArguments(Method);
- method in objective-c always have 2 arguments as default (message passing)
- first argument: the class you're trying to call
- second argument: name of the method

### Everything happens at runtime
- useful for creating utilities/plugins or inspecting your app


## Actually Useful Stuff
* `isMemeberOfClass:` is it an instance of the class?
* `isKindOfClass:` is it an instance of the class (or an inherited class)?
* `repondsToSelector:` Does it have the method?
* `performSelector:...` Call the method!


## Objective-C Message Passing
```
ClassName *myObject = [[ClassName alloc] init];
[myObject doItWith: 1];
```
 |
 |  compiler changes your code as such
V
```
objc_msgSend(myObject, @selector(doItWithA:), 1);
```
 |
 | look up *dispatch table* has method selectors and addresses of methods
V
`run the code`


* Seems very inefficient by adding another layer of indirection (slower?)
* Actually this process is very efficient and very optimized.
	- look ups are very quick and they are hashed (also cached).
* This is actually how categories work. 



