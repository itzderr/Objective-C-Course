#  Blocks
- Anonymous functions, with optional bindings to stack/heap variables
- Keeps your method call & callback code together
```
[obj doSomething:^(MyObject *object) {
	// callback code
}];
```
- Widely used in iOS SDK

### Declaring a Block
- Looks like `C` function pointer
- Syntax
- `return_type^(var name)(list of args type) = ^(list of args) { implementation }`
- Example Code
```
void (^MyBlock)(id, NSUInteger, BOOL *) = ^(id obj, NSUInteger index, BOOL *stop) {
	NSLog(@"Video game: %@", (NSString *) obj);
};

// 1
[videoGames enumerateObjectsUsingBlock:MyBlock];

// 2 inline - more common
[videoGames enumerateObjectsUsingBlock:^(id obj, NSUInteger index, BOOL *stop) {
	NSLog(@"Video game: %@", (NSString *) obj);
}];
```
- Like closures from other languages
- You can access Global Variables, Parameters, Stack Variables(it copies), `__block` variables (by reference), Block local variables
	

