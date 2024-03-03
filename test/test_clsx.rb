# frozen_string_literal: true

require "test_helper"

class ClsxTest < Minitest::Test
  def test_strings
    assert_equal "foo bar baz", CLSX.clsx("foo", true && "bar", "baz")
  end

  def test_objects
    assert_equal "foo baz", CLSX.clsx({foo: true, bar: false, baz: true})
  end

  def test_objects_variadic
    assert_equal "foo --foobar", CLSX.clsx({foo: true}, {bar: false}, nil, {"--foobar" => "hello"})
  end

  def test_arrays
    assert_equal "foo bar", CLSX.clsx(["foo", 0, false, "bar"])
  end

  def test_arrays_variadic
    assert_equal "foo bar baz hello there", CLSX.clsx(["foo"], ["", 0, false, "bar"], [["baz", [["hello"], "there"]]])
  end

  def test_kitchen_sink
    assert_equal "foo bar hello world cya", CLSX.clsx("foo", [1 && "bar", {baz: false, bat: nil}, ["hello", ["world"]]], "cya")
  end
end
