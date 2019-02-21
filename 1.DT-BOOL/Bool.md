#  Booleans

* Represents true / false values
* Objective-C does support bool type from the C programming (C99) standard (`true`/`false`)
* But Apple Objective-C framewords use `BOOL` (`YES`/`NO`)

* BEST practice: use `BOOL` for Objective-C code

```
// How BOOL is defined.
#if !defined(OBJC_HIDE_64) && TARGET_OS_IPHONE && __LP64__
typedef bool BOOL; // 64 bits
#else
typedef signed char BOOL; // 32 bits
#endif
```
