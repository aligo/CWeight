# encoding: utf-8
# 二十四铢重一两，十六两重一斤

require "./cweight"
describe CWeight, "Chinese weight units" do
  it "can be used" do
    #1
    24.铢.should == 1.两
    16.两.should == 1.斤
    #2
    1.铢.should_not == 1
    #3
    0.5.斤.should == 8.两
    #4
    (15.两 + 24.铢).should == 1.斤
    (1.两 * 9 - 24.铢).should == 0.5.斤
  end
end
