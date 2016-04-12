Ruby2JSON converter
======================

Simple online tool to convert ruby JSON/hash console output to proper JSON. For example `{"ruby"=>"json"}` translates as `{ "ruby" : "json" }`

[![Ruby2JSON app preview](/assets/ruby2html_preview.png?raw=true)](http://ruby2json.herokuapp.com/)
[http://ruby2json.herokuapp.com/](http://ruby2json.herokuapp.com/)

Workflow
--------

Parser is very naïve. The process of the parsing is following:

  1. Removes the line brakes and join the lines in single string.
  2. Translates `=>` to `:`
  3. Translates `nil` to `null`
  4. Tries to parse the JSON.
  5. Pretty print the JSON.

License
-------

**The MIT License (MIT)**
**Copyright (c) 2016 Vojtěch Kusý**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
