#  Float
### Floating Point Data Types
* Decimal point numbers: 3.14, 123.456
* Useful to represent very large numbers: 1.34 * (2^60)

| Type          | 32-bit size | 64-bit size |
|:------------:|:------------:|:------------:|
| `float`      |          4      |         4        |
| `double`    |          8      |         8        |
| `CGFloat`  |         4       |         8        |
* (Be careful when you're casting `CGFloat` to `float`)

### Similar best practices as `BOOL`
* `CGFloat` for interacting with Apple code, or if you want most optimal precision for the platform
* `float` / `double` if you want to specify precisely what you need, or portability (C/C++ Library)

### Floating Point Internals (Simplified)
* Sign x Mantissa x Base(2) ^ Exponent  [link](www.h-schmidt.net/FloatConverter)
* Mantissa : significant digits
