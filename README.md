# RorR

[![Code Climate](https://codeclimate.com/github/mgleon08/rorr/badges/gpa.svg)](https://codeclimate.com/github/mgleon08/rorr)
[![Build Status](https://travis-ci.org/mgleon08/rorr.svg?branch=master)](https://travis-ci.org/mgleon08/rorr)

RorR(Ruby or Rails) is a test designed to evaluate the Ruby or Rails proficiency and artificial intelligence in a fun, interactive way.

## Installation

```
$ gem install rorr
```

##Getting Started

Then run the `rorr` command to start

```
$ rorr
```

Have three topics

```ruby
Welcom to RorR!

Choose the topic you want to start
1. Don't ask me Ruby or Rails
2. What's the return value?
3. Make all test pass
0. exit

>
```

###Topic1: Don't ask me Ruby or Rails

This is to check whether you remember where Ruby ends and Rails.

```ruby
Welcome to "Don't ask me Ruby or Rails"
Let's check whether you remember where Ruby ends and Rails

------------------------------
Question 1 :
------------------------------

Array(foo: :bar)      # => [[:foo, :bar]]

------------------------------
ruby or rails? (Type the ruby or rails to answer, skip to next question, exit to exit)

>
```

###Topic2: What's the return value?

This will show you the several pieces of code. You should type the code returned values to answer.

```ruby
Welcome to "What's the return value?"
Let's check how much do you proficiency in ruby or rails

------------------------------
Question 1 :
------------------------------

1 == 1.0

------------------------------
What's the return value? (Type the Exception or SyntaxError if you expect it will return, skip to next question, exit to exit)

>
```

You can type `Exception` & `SyntaxError` to answer if you expect it will return.


###Topic3: Make all test pass

This will create a rorr directory in your current location where you find a `player.rb` and `README` file.

You can see `README` for instructions and write you answer to `player.rb`.

Type rorr to check if you've finished.

```ruby
Welcome to "Make all tests pass"
Let's check how much do you proficiency in ruby or rails

Question 001 has been generated.
See the ./rorr/normal/001/README for instructions.

When you're done editing player.rb, type the rorr to check, skip to next question, exit to exit
>
```


###Test Report

In finish it will show you test report.

```ruby
 Test Report

 Q.  | Corr | Skip | Retry
-------------------------
  1. |   ✓  |      |   0
  2. |   ✓  |      |   0
  3. |   ✓  |      |   0
  4. |      |   ✓  |   0
  5. |      |   ✓  |   0
  6. |   ✗  |      |   0
  7. |   ✗  |      |   0
  8. |   ✗  |      |   0
  9. |   ✓  |      |   0
 10. |   ✓  |      |   0
-------------------------
  10 |   5  |   2  |   0

 Correct Rate:    50.0%
    Skip Rate:    20.0%

   Spend Time: 00:00:33
```

##Run Options
You can run `rorr -h` for help

```
Usage: rorr [options]
-t, --time SECONDS    Delay each turn by seconds (default: 0.6)
-n, --number NUMBER   Number of questions (default: 10, all = -1)
-s, --solution        Show the solution (default: false)
-h, --help            Show this message
```

##Questions Reference

If you have good questions welcome to pull requests or comments
on GitHub at [`https://github.com/mgleon08/rorr/pulls`](https://github.com/mgleon08/rorr/pulls)

* [Rails Hurts quiz](http://railshurts.com/quiz/)
* [11 Essential Ruby Interview Questions*](https://www.toptal.com/ruby/interview-questions)
* [15 Questions to Ask During a Ruby Interview](https://gist.github.com/ryansobol/5252653)
* [CoderByte](https://coderbyte.com/)

## Contributing

Bug reports and pull requests are welcome on GitHub at [`https://github.com/mgleon08/rorr/pulls`](https://github.com/mgleon08/rorr/pulls)

## Copyright & License

* Copyright (c) 2016 Leon Ji. See [LICENSE.txt](https://github.com/mgleon08/rorr/blob/master/LICENSE.txt) for further details.
* The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
