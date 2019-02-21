#  What are protocols and delegates?

* Protocol : An interface (in Java)
* Delegate : An object that implements an interface(protocol).
* Benefit : Reduced dependencies between objects.


### Delegate Pattern Steps + Syntax
1. Defining a Protocol
```
@protocol ProtocolName<ProtocolToExtend>
@optional
// Optional methods
@required
// Required methods
@end

```
2.  Conforming to a Protocol (Delegate Class)
```
// in .h header file
@interface ClassName: SuperClass <ProtocolName>

// or in .m implementation file (if you want to hide that the class is conforming to the protocol)
@interface ClassName () <ProtocolName>
```
3. You implement the methods on your (delegate) class
4. When referring to an object that implements a protocol, do this:
`@property id <ProtocolName> delegate`

