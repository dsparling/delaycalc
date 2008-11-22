$:.unshift File.dirname(__FILE__)

module Delaycalc

  def self.convert_bpm(bpm,sub)
    ( (1.0/sub) * (60000/bpm) ).round
  end

  def _convert_bpm(bpm,sub)
    ( (1.0/sub) * (60000/bpm) ).round
  end

  def W
    _convert_bpm(self,0.25)
  end

  def HD
    _convert_bpm(self,0.3333333333333333)
  end

  def H
    _convert_bpm(self,0.5)
  end

  def HT
    _convert_bpm(self,0.75)
  end

  def QD
    _convert_bpm(self,0.6666666666666666)
  end

  def Q
    _convert_bpm(self,1.0)
  end

  def QT
    _convert_bpm(self,1.5)
  end

  def ED
    _convert_bpm(self,1.3333333333333333)
  end

  def E
    _convert_bpm(self,2)
  end

  def ET
    _convert_bpm(self,3)
  end

  def SD
    _convert_bpm(self,2.6666666666666666)
  end

  def S
    _convert_bpm(self,4)
  end

  def ST
    _convert_bpm(self,6)
  end

  def TD
    _convert_bpm(self,5.3333333333333333)
  end

  def T
    _convert_bpm(self,8)
  end

  def TT
    _convert_bpm(self,12)
  end

end

class Integer
  include Delaycalc
end
