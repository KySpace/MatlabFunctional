# MatlabFunctional
An effort to make the Matlab language more functional and composable, and a bit more consistent in typing. Might at the expense of a bit performance and extra memory usage.

Much of the library is inspired by the functional programming (FP) paradigm. Here I list a few that I wish Matlab supports, but for the actual functions implemented, I leave the documentation within each file, since they may be updated in the future.

To use the library, include all folders to your path, or run `loadlib`.
#### Function as first-class citizen
Extensive use of function as first-class citizen: being able to compose functions and pass them around. This includes some of the common second-order functions such as `fold` `group` `join` `sort`, etc. For function composition, we have `apply`, `pipe`, `executeall` etc.. I also created some idiomatic definition to common functions, like the identity function or a function that does nothing, or a constant function.
- One thing I really miss from FPs, is the ability to create a lambda expression (also called unnamed function in Typst, or a closure in Rust, or an anonymous function in Matlab, they are the same thing) and apply it immediately without even assigning the function to some variable. I find it especially useful when we want to access some value and use it more than twice, but that we don't want to use another line to assign that value, for example,
```matlab
func2( func1(somevalue.with(a).very_long.name), ...
       somevalue.with(a).very_long.value ...
       )
```
Can be just
```matlab
apply(@(l) func2(func1(l.name), l.value), ...
      somevalue.with(a).very_long)
```
which is much clearer IMO.
- There are situations where I want to pipe several functions together, only to be evaluated later (with some parameters that will only be accessed then). Think of it as a list of tasks that can be represented by a cell array where each cell contains a function handle (I don't think a simple handle array works in Matlab). We then need an execution function that execute the tasks in sequence.
- Piping several functions `g(h(f(arg)))` together requires a lot of brackets in matlab, which is a huge visual cluster. It's always nice to flatten the call stack into a list of functions. Conceptually it makes more sense as well, and it's clearer to write `apply(pipe({@f, @h, @g}, arg))`. Another reason this is useful is that the native Matlab way to apply function, namely the brackets `fun(arg)`, doesn't always work. For example, if `fun` is generated through some function generator, you cannot directly apply it, which sucks.

#### Expression as control flow
Expressions as the elementary blocks of codes rather than imperative flows of commands. For example, in Matlab if I want to write a function that takes the larger of `a` and `b` and assign it to `c` (let's assume there's no `max()` function existing already), then I would go with 
```matlab
    if a > b
        c = a;
    else
        c = b;
    end
```
while in a functional programming where the if-else syntax yields an expression, we can write as `c = if a > b then a else b`, which could be a one-liner, and clearly indicate that we just want to assign a value to `c`. 

#### Type conversions
Create some functions that will facilitate type conversions, especially the container types such as arrays and cell arrays. For example, in the standard library, there is no way to turn a cell array into a flat array even if every cell contains the element of the same type. This is especially cumbersome for strings since Matlab seems to have previously used cell array of char arrays (that's a mouthful) for a collection of strings, such as `{'str', 'next str'}`, which is actually syntax sugar for 
```matlab 
[   {['s' 't' 'r']}, 
    {['n' 'e' 'x' 't' ' ' 's' 't' 'r']}    ]
```
But now string array is actually supported, and the same collection can be represented by a simple `["str", "next string"]`, then some conversion between the two is needed when the legacy format is relevant. 

#### Argument Validation
Argument validation is the closest thing that comes to a type signature in a well-typed language. It is also a great place to specify size, constraint and add comments. Here we add some validation functions to help force a more complicated type constraint, such as the content inside a cell array.


