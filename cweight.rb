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
    #2
    def initialize weight
      @weight = weight
    end
    #4
    def method_missing method, *args
       self.class.new(@weight.send(method, *args))
    end
    #2
    def == another
      (another.class == self.class) && (@weight == another.to_int)
    end
    #4
    def coerce x
      [x, @weight]
    end
    #2
    def to_int
      @weight
    end

  end


end

#3
Float.send :include, CWeight::IntegerMethods
#3
Integer.send :include, CWeight::IntegerMethods

