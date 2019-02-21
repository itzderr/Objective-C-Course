#  Integers
## Integers?
- Whole numbers: 1, 2, 3, 1000000, ...
- Declaration & Initialization:
- `int myInt = 32;`
- Integers can be signed or `unsigned`
- more bytes means larger range
- Three kinds of integers types in iOS
	- Architecture-dependent types
	- Explicit sized types
	- Apple types

### Arch Dependent Types
|    Type   | 32-bit | 64-bit |
|:---------:|:------:|:------:|
|    char   |    1   |    1   |
|   short   |    2   |    2   |
|    int    |    4   |    4   |
|    long   |    4   |    8   |
| long long |    8   |    8   |

### Apple Types
|    Type    | 32-bit | 64-bit |
|:----------:|:------:|:------:|
|  NSInteger |    4   |    8   |
| NSUInteger |    4   |    8   |


```
// How Apple Integer Types are defined
#if __LP64__ || TARGET_OS_WIN32 || NS_BUILD_32_LIKE_64
typedef long NSInteger;
typedef unsigned long NSUInteger;
#else
typedef int NSInteger;
typedef unsigned int NSUInteger;
#endif

```

### Explicit Data types - regardless of arch
|   Type  | 32-bit | 64-bit |
|:-------:|:------:|:------:|
|  int8_t |    4   |    8   |
| int16_t |    2   |    2   |
| int32_t |    4   |    4   |
| int64_t |    8   |    8   |

## Best Practices
### `NSInteger`
- when interacting with Apple Code
- public class APIs to conform with Apple standards
- when want native integer size of architecture
### Arch dependent or explicit types
- Explicit when want specific sized type (i.e. network programming)
- arch dependent when size not important (loops)
- when optimizing for portability (esp. C/C++ Lib Code)
- Avoiding memory bloat (Not always 8 bytes (`NSInteger`))

