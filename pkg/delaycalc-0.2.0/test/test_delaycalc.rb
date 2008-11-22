require File.dirname(__FILE__) + '/test_helper.rb'

class TestDelaycalc < Test::Unit::TestCase

  def setup
  end
  
  def test_bpm_good
    bpm = 120

    assert_equal(2000, bpm.W)
    assert_equal(1500, bpm.HD)

    assert_equal(1000, bpm.H)
    assert_equal(667, bpm.HT)

    assert_equal(750, bpm.QD)
    assert_equal(500, bpm.Q)
    assert_equal(333, bpm.QT)

    assert_equal(375, bpm.ED)
    assert_equal(250, bpm.E)
    assert_equal(167, bpm.ET)

    assert_equal(188, bpm.SD)
    assert_equal(125, bpm.S)
    assert_equal(83, bpm.ST)

    assert_equal(94, bpm.TD)
    assert_equal(63, bpm.T)
    assert_equal(42, bpm.TT)

    assert_equal(500, Delaycalc.convert_bpm(120,1.0))

  end

  def test_bpm_bad

    bpm = 120

    assert_not_equal(5000, bpm.Q)
    assert_not_equal(5000, Delaycalc.convert_bpm(120,1.0))

  end

end
