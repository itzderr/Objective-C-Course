#  ARC (Automatic Reference Counting)
### ARC
- You cannot call `retain`, `release`, `autorelease`, `dealloc`.
- Compiler will automatically put them in there for you.
- **ARC** is not equal to **Garbage Collection**
- Declare pointer variables as `__strong` (default) or `__weak`
- `strong` will increament the ref count whereas `weak` will not.

### Retain Cycles
- When two objects and their properties have strong pointers pointing at each other.
```
                 strong
                -------->
@Sweater.owner	            @Person.sweater	
                <--------
                 strong
```
- Use weak pointer for one of the objects to solve this problem.
```
                  weak
                -------->
@Sweater.owner	            @Person.sweater	
                <--------
                  strong
```

### Readings (Articles)
- [iOS Memory Management part1](https://medium.com/@ITZDERR/ios-memory-management-history-high-level-part-1-118f57b613d6)
- [iOS Memory Management part2](https://medium.com/@ITZDERR/ios-memory-management-arc-in-objective-c-and-swift-part2-f8d269c5e9c) 
