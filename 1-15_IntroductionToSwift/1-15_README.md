# Days 1-15: Introduction to Swift
Day 1 – variables, constants, strings, and numbers  
Day 2 – Booleans, string interpolation, and checkpoint 1  
Day 3 – Arrays, dictionaries, sets, and enums  
Day 4 – type annotations and checkpoint 2  
Day 5 – if, switch, and the ternary operator  
Day 6 – loops, summary, and checkpoint 3  
Day 7 – functions, parameters, and return values  
Day 8 – default values, throwing functions, and checkpoint 4  
Day 9 – closures, passing functions into functions, and checkpoint 5  
Day 10 – structs, computed properties, and property observers  
Day 11 – access control, static properties and methods, and checkpoint 6  
Day 12 – classes, inheritance, and checkpoint 7  
Day 13 – protocols, extensions, and checkpoint 8  
Day 14 – optionals, nil coalescing, and checkpoint 9  
Day 15 – Swift review

## Day 1 - variables, constants, strings, and numbers
- var : create variable / no need to use var again
- let : create constant / optimized, safer
- String : `\"` for double quotes, `"""` for multi lines, `.count`, `.uppercased()`, `.hasPrefix()`, `.hasSuffix()`
- Int : `_` is ignored, `+=, -=, *=, /=` adds number to itself, `.isMultiple(of:)`
- Double : `0.1 + 0.2 = 0.30000..4`because computers use binary to store Double
- Type-safe language : cannot change its type

## Day 2 - Booleans, string interpolation, and checkpoint 1
- `hasSuffix(), isMultiple(of:)` return Boolean type
- `!` operator to flip Bool value = `toggle()`
- Join Strings with `+`, `\(constant)` to use constant in String
- can put calculations inside string interpolation `"\(5 * 5)"`
<img width="409" alt="image" src="https://user-images.githubusercontent.com/115053126/225030314-be4d0bde-b6f2-41a8-a311-f0fd11aeed11.png">

## Day 3 - Arrays, dictionaries, sets, and enums
Collections of data
- Array : group datas, access the value with index(`beatles[0]`)  
To make : `Array<String>(), [Array](), [1, 2, 3]`  
`.append, .count, .contains(), .sorted(), .reversed()`
- Dictionary : store items with keys  
To make : `let me = ["name": "Marcus", "location": "Korea"]` or `[String: Int]()`  
To access : `me["name"]` -> optional value. or `me["name", default: "Unknown"]`
- Set : fast data lookup, print in random order  
To make : `Set<String>(), Set(["apple", "banana", "melon"])`  
`contains()` <- very fast, `.insert(), .count, .sorted`
- Enum : set of named value, efficient and safe, saves in optimized form(using Int instead of letters)  
To make : `enum Weekday { case monday, tuesday }`  
To access : `Weekday.monday`, once assigned : can just put `.tuesday`

## Day 4 – type annotations and checkpoint 2
- Type inference : Swift infers type by its value. `var name = "Marcus"`
- Type annotation : We assign type explicitly. `var num: Double = 0`  
- - when Swift can't figure out what type should be used
- - when we want Swift to use a different type than its default
- - when we don't want to assign a value yet
- String, Int, Double, Bool, Array`[String]`, Dictionary`[String: Int]`, Set`Set<String>`, Enum
- Empty collection types are used because you don't know your data yet
<img width="554" alt="image" src="https://user-images.githubusercontent.com/115053126/225328830-c07a2ba7-ed97-44bd-946e-ca839761bc1d.png">

## Day 5 – if, switch, and the ternary operator
### if, else, logical operator
- if someCondition { }
- `<, >=` working with String : comparison on alphabetical order
- Swift has special type for storing `Date`
- `enum Sizes: Comparable` : Comparable can be used to compare enum case list.
- `== true` can be removed
- multiple condition : `else if`, `&& ||`(logitcal operator)
- `(A && B) || C` use parentheses to clarify what we mean
### switch
- check individual cases one by one
- switch statements must be exhaustive (use `default:`)
- execute the first case that matches, then stop (or use `fallthrough`
- switch : value will only be read once, if : value will be read multiple times
- advanced pattern matching, legibility purpose
### ternary operator
- WTF : `what` ? `true` : `false`
- a lot of use in SwiftUI
## Day 6 – loops, summary, and checkpoint 3  
### loop
- loop body : code inside `{ }`
- loop iteration : one cycle through the loop body
- loop variable : `i` in the loop body, change in the next iteration
- range operators : `1...5`, `1..<5`, `1...`
### while
- useful when we don't know how many times the loop will repeat
- combine with `.random` ex) `while roll != 20`
- loop until condition becomes false
### continue
- skips the current loop iteration  
- commonly used near the start of loops to skip the loop variable with `if`
### break
- break : skips all remaining iterations
- exits the loop immediately
### labeled statements
- `outerLoop:` ~ `break outerLoop` : breaks out of nested loops
<img width="471" alt="image" src="https://user-images.githubusercontent.com/115053126/225345339-4a1a21a6-d038-40b8-8be1-027c88ca057f.png">

## Day 7 – functions, parameters, and return values

## Day 8 – default values, throwing functions, and checkpoint 4
<img width="381" alt="image" src="https://user-images.githubusercontent.com/115053126/225657526-0fae8b90-5cde-4e3e-a6de-e5ba1101a4ec.png">

## Day 9 – closures, passing functions into functions, and checkpoint 5
<img width="605" alt="image" src="https://user-images.githubusercontent.com/115053126/225962175-30ea52ac-4fbe-4dcf-a95c-f1f71ae7884e.png">

## Day 10 – structs, computed properties, and property observers

<img width="564" alt="image" src="https://user-images.githubusercontent.com/115053126/226087179-815d30ec-3f1d-4581-b30a-3b1ae11dfb77.png">

## Day 11 – access control, static properties and methods, and checkpoint 6
<img width="433" alt="image" src="https://user-images.githubusercontent.com/115053126/226088138-69d66559-105c-4012-8515-3b823baf619b.png">

## Day 12 – classes, inheritance, and checkpoint 7
<img width="311" alt="image" src="https://user-images.githubusercontent.com/115053126/226092721-3f621012-714e-4d30-b165-39e2b27c2ef5.png">

## Day 13 – protocols, extensions, and checkpoint 8  
## Day 14 – optionals, nil coalescing, and checkpoint 9  
## Day 15 – Swift review