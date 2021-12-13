# DEBUG LOGGER

This very simple gem was created to simplify your life in creating your log in your programs. It simply allows you to display logs of different colors, whether for a web application like RubyOnRails or for scripts.


Warning, use this gem only for your development, do not use it for production.

## Installation

* `gem install debug_logger`
* `gem 'debug_logger', '~> 0.2'` for Gemfile

=> https://rubygems.org/gems/debug_logger/

## Usage

```diff
debug_logger = DebugLogger.new(color, storage)
# @color = Symbol (Optional) => Color of your log
# @storage = Boolean (Optional) => Save your log

debug_logger.log(text, color, variables, storage)
# @text = String (require) => Text of your log
# @color = Symbol (Optional) => Color of your log, this param is priority to the colors chosen during instantiation
# @variables = String, Hash, Array, Text... (Optional) => Dynamic params of your log
# @storage = Boolean (Optional) => Save your log, this param is not priority to the storage chosen during instantiation

# To see all color :

debug_logger.color_lists
```

#### Example

```diff
debug_logger = DebugLogger.new(:green, true)
debug_logger.log('Debug Logger')
+ Debug Logger========================================

name = 'toto'
debug_logger.log('Debug Logger 2', nil, name)
+ Debug Logger 2====================>toto====================

See all logs saving :
debug_logger.logs(date)
# @date = Bollean (Optional) => Date of your log

debug_logger.logs
Initialize DebugLogger logage
+ Debug Logger========================================
+ Debug Logger 2====================>toto====================

debug_logger.logs(true)
Initialize DebugLogger logage
+ Debug Logger======================================== | AT 2020-06-20 21:37:18
+ Debug Logger 2====================>toto==================== | AT 2020-06-20 21:37:22
```

## Contact

Problems, questions or idea for improvement contact me at <a href="https://github.com/antonintouron" target="_blank">Github</a>

## License

MIT License

Copyright (c) 2020 Antonin Touron

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
