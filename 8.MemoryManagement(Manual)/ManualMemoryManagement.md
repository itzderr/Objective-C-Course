#  Memory Management (Pre-ARC)

## ☝️ We're only covering this to understand what ARC is doing.

### All Objective-C Classes are derived from `NSObject` (Super class)
- `NSObject` classes are all reference counted.
- When reference count == 0, memory get released.
- ARC (Automatic Reference Counting) automatically manages reference count.
- Compiler will **automatically** insert all the memory management code

### Managing Reference Count Manually (Pre-ARC)
- Memory management in Obj-C works with conventions and keywords.
- Convention: methods beginning with `init` or `copy`: reference count = 1
- `release`: reference count`--`
```
Person *p1 = [[Person alloc] initWithName:@"Jack"];

[p1 release];
```
- `retain`: reference count`++`
```
- (void)setName:(NSString *) name {
    [_name release];
    _name = name;
    [_name retain];
}

// simplified version, you need to do something when there's the same name object passed as arguments
```
- Convention: methods beginning with **anything but** `init` or `copy`: return "autoreleased objects"
- `autorelease`: reference count`--` (**later on** when the autorelease pool is drained. Typically, when the next iteration of the run loop or you can insert code to manually make it happen. Just think of it as "later on when out of my current scope")
```
- (NSString *) quote {
    return [[NSString alloc] initWithFormat:@"%@ says: Give me my sweater back!", _name] autorelease];
}

// main.m
NSString *quote = [p1 quote]; // by convention, assume it's autoreleased object

// retain quote object if you need it to stick around... [quote retain];
```
- Properties can be marked to `retain`
```
@property (nonatomic, retain) NSString *name;
//	 |
//	 V
- (void)setName:(NSString *)name {
    [_name release];
    _name = name;
    [_name retain];
}
```

- You have to clean up in `dealloc` inside  your class
```
- (void) dealloc {
    NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
    [_sweater release];
    _sweater = nil;
    [_name release];
    _name = nil;
    [super dealloc];
}
```
