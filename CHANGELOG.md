## [Unreleased]
## [0.1.2] - 2024-03-02
PUBLIC RELEASE

## [0.1.1] - 2024-03-03
### Changed
- Changed `clsx` to `CLSX`


## [0.1.0] - 2024-03-02

- Initial release

These examples should be working

Strings (variadic)
```ruby
  clsx("foo", true && "bar", "baz")
  #=> "foo bar baz"
```

Objects
```ruby
  clsx({ foo:true, bar:false, baz:is_true? })
  #=> "foo baz"
```

Objects (variadic)
```ruby
  clsx({ foo:true }, { bar:false }, null, { "--foobar":"hello" })
  #=> "foo --foobar"
```

Arrays
```ruby
  clsx(["foo", 0, false, "bar"])
  #=> "foo bar"
```

Arrays (variadic)
```ruby
  clsx(["foo"], ["", 0, false, "bar"], [["baz", [["hello"], "there"]]])
  #=> "foo bar baz hello there"
```

Kitchen sink (with nesting)
```ruby
  clsx("foo", [1 && "bar", { baz:false, bat:null }, ["hello", ["world"]]], "cya")
  #=> "foo bar hello world cya"
```

