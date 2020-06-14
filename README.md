# DEBUG LOGGER

This very simple gem was created to simplify your life in creating your log in your programs. It simply allows you to display logs of different colors, whether for a web application like RubyOnRails or for scripts.


Warning, use this gem only for your development, do not use it for production.

## Usage

```diff
DebugLogger::log(color, text, variables, storage, space)
# @color = Symbol (require) => Color of your log
# @text = String (require) => Text of your log
# @variables = String, Hash, Array, Text... (Optional) => Dynamic params of your log
# @storage = Boolean (Optional) => Storage of your log
# @space = Boolean (Optional) => With/without space before and after log

# To see all color :

DebugLogger::color_lists
```

#### Example

```diff
name = 'toto'
DebugLogger::log(:green, 'Debug Logger', name, true)
+ Debug Logger====================>toto====================

DebugLogger::log(:green, 'Debug Logger 2', name, true)
+ Debug Logger 2====================>toto====================

DebugLogger::DataStore::logs
+ Debug Logger====================>toto====================
+ Debug Logger 2====================>toto====================

To reset the storage of your logs :
DebugLogger::DataStore::reset_logs
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
