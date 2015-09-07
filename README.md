# delaycalc

## About

delcaycalc is a simple delay time calculator for calculating delay settings based on song BPM (beats per minute)

## Installing delaycalc

Just intall the gem:

  $ sudo gem install delaycalc

## Using delaycalc

```ruby
#!/usr/local/bin/ruby
require 'rubygems'
require 'delaycalc'

bpm = 120

puts "BPM: #{bpm}"

puts "W(1/1): #{bpm.W} ms"

puts "HD(1/2.): #{bpm.HD} ms"
puts "H(1/2): #{bpm.H} ms"
puts "HT(1/2T): #{bpm.HT} ms"

puts "QD(1/4.): #{bpm.QD} ms"
puts "Q(1/4): #{bpm.Q} ms"
puts "QT(1/4T): #{bpm.QT} ms"

puts "ED(1/8.): #{bpm.ED} ms"
puts "E(1/8): #{bpm.E} ms"
puts "ET(1/8T): #{bpm.ET} ms"

puts "SD(1/16.): #{bpm.SD} ms"
puts "S(1/16): #{bpm.S} ms"
puts "ST(1/16T): #{bpm.ST} ms"

puts "TD(1/32.): #{bpm.TD} ms"
puts "T(1/32): #{bpm.T} ms"
puts "TT(1/32T): #{bpm.TT} ms"

# Or Explicit
puts "Q(1/4): " + Delaycalc.convert_bpm(120,1.0).to_s + " ms"
```

Initial release uses these abbreviations:

W:  Whole note
HD: Half note Dotted
H:  Half note
HT: Half note Triplet
QD: Quarter note Dotted
Q:  Quarter note
QT: Quarter noteTriplet
ED: Eighth note Dotted
E:  Eighth note
ET: Eighth note Triplet
SD: Sixteenth note Dotted
S: Sixteenth note
ST: Sixteenth note Triplet
TD: Thirty second note Dotted
T: Thirty second note
TT: Thirty second note Triplet

## Version history and stuff

* **0.0.1**: initial release. (2007)
* **0.2.0**: added delaycalc script to /bin.
* **0.9.0**: updated to use gemspec/expect syntax/cleanup of some cruft.

## LICENSE:

(The MIT License)

Copyright (c) 2008-2015 Doug Sparling

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
