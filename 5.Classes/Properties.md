#  Properties 
## Syntax
`@property (attribute1, attribute2) type propertyName;`

## What the compiler does?
- Example:
`@property (assign) float myAge;`
- Compiler will auto-generate the following code for you.
```
// .m (implementation file)
@implementation DateCalculator {
	// private instance variable
	float _myAge;
}

- (float) myAge {
	// getter
	return _myAge;
}

- (void) setMyAge:(float) myAge {
	// setter
	_myAge = myAge;
}
```

## Property Attributes
- `strong` : strong pointer (increment ref count +1)
- `weak` : weak pointer (no ref count)
- `assign` (default): primitive types
- `nonatomic` : non thread safety (use this, no overhead)
- `atomic` (default) : thread safety feature
- `copy` : copying contents
- `readonly` - only getter
- `readwrite` (default) - getter and setter
- `getter=name`
- `setter=name`

## Dot Notation
### Use it only for properties if you want. (Convention)
- `[instance myName];` -> `instance.myName;`
- `[instance setMyName:@"Derrick"];` -> `instance.myName = @"Derrick";`
