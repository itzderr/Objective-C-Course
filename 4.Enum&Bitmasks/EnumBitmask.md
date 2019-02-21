# Enum
- "Enums are really just glorified integer constants"
- Objective-C does support `enum` type from the C programming C99 standard
- There's a better way (`NS_ENUM`)
- You can specify the type
- Benefits: type safety, compiler helps when using switch statements


#  Bitmasks
- Treat a type as a series of on/off flags (booleans)
- Efficiently store a large series of booleans
- ex) 8 bits
- | 0 |  0 | 0 | 0 | 0 | 0 | 0 | 0 |  (Use each bit like boolean flag)
- You can still do things the old way (C) - bit shifting
- Bitwise Operators: & (AND), | (OR), ^ (XOR), ~ (NOT), << (left shift), >> (right shift)
- i.e.
```
static const NSInteger EntityCategoryPlayer = 1 << 0;
static const NSInteger EntityCategoryAsteroid = 1 << 1;
static const NSInteger EntityCategoryAlien = 1 << 2;
```
- | 0 |  0 | 0 | 0 | 0 | 1 | 0 | 1 |  (`EntityCategoryPlayer | EntityCategoryAlien`)
- Better way -> (`NS_OPTIONS`)
- Example in `Bitmasks.m`
