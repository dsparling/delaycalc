= delaycalc 1

== About

delcaycalc is a simple delay time calculator for calculating delay settings based on song BPM (beats per minute)

== Installing delaycalc

Just intall the gem:

  $ sudo gem install delaycalc

== Using delaycalc

  script/delaycalc
  ================

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
