#  Handling Exceptions
The exception handling mechanisms available to Objective-C programs are effective ways of dealing with exceptional conditions. They decouple the detection and handling of these conditions and automate the propogation of the exception from the point of detection to the point of handling. As a result , your code can be much cleaner, easier to write correctly, and easier to maintain.

## Handling Exceptions Using Compiler Directives
Compiler support for exceptions is based on four compiler directives:
* `@try` - Defines a block of code that is an exception handling domain: code that can potentially throw an exception.
* `@catch()` - Defines a block containing code for handling the exception thrown in the `@try` block. The parameter of `@catch` is the exception object thrown locally; this is usually an `NSException` object, but can be other types of objects, such as `NSString` objects.
* `@finally` - Defines a block of related code that is subsequently executed whether an exception is thrown or not.
* `@throw` - Throws an exception; this directive is almost identical in behavior to the `raise` method of `NSException`. You usually throw `NSException` objects, but are not limited to them. For more information about `@throw`, see [Throwing Exceptions](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/Exceptions/Tasks/RaisingExceptions.html#//apple_ref/doc/uid/20000058-BBCCFIBF)

- Example Code
```
@try {
	// code that throws an exception
	...
}
@catch (CustomException *ce) { // most specific type
	// handle exception ce
	...
}
@catch (NSException *ne) { // less specific type
	// do whatever recovery is necessary at his level
	...
	// rethrow the exception so it's handled at a higher level
	@throw;
}
@catch (id ue) { // least specific type
	// code that handles this exception
	...
}
@finally {
	// perform tasks necessary whether exception occurred or not
	...
}
```

