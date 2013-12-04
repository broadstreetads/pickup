# PickupLine

## Installation

``` bash
$ gem install pickup_line
```

## Introduction

PickupLine is a simple library to match some Strings to find date context
in short status updates.  It doesn't do anything too fancy, but the goal
is to be able to turn something like:

"Let's eat a sandwich on Thursday" into a corresponding `Date` based on
`Date.today`.

## Usage

``` ruby
parser = PickupLine::Parser.new(Date.current)
parser.locate "see you tomorrow" # Date.current + 1
parser.locate "see you next tuesday" # ya know
```

## Issues?

Use the GitHub issue tracker

## Contributing

* Contributions are welcome - I use GitHub for issue
	tracking (accompanying failing tests are awesome) and feature requests
* Submit via fork and pull request (include tests)
* If you're working on something major, shoot me a message beforehand

### License

(The MIT License)

Copyright © 2010-2012 John Crepezzi, Broadstreet Ads Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the ‘Software’), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
