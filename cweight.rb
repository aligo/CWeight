# encoding: utf-8
# 二十四铢重一两，十六两重一斤
module CWeight
  #3
  module IntegerMethods
    
    #1
    def 斤
      两 * 16
    end
    #1
    def 两
      铢 * 24
    end
    #2
    def 铢
      CWeight.new self
    end
  end
   
  #2
  class CWeight

    attr_reader :value
    #2
    def initialize value
      @value = value
    end
    #2
    def * times
      self.class.new @value * times
    end
    #4
    def + another
      self.class.new @value + another.value
    end
    #4
    def - another
      self.class.new @value - another.value
    end
    #2
    def == another
      (another.class == self.class) && (@value == another.value)
    end

  end


end

#3
Float.send :include, CWeight::IntegerMethods
#3
Integer.send :include, CWeight::IntegerMethods

