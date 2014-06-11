require 'spec_helper'

describe 'wubbing some Samuel L. Ipsum' do
  include Wubit
  before(:each) do
    @unwubbed = "You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out."


    @wubbed = "You twibk waber wobes wabt? You should see ice. It wobes wibe it wab a wibd. wibe it kwobs it wibweb the wobld once and wob a wabte wob wubweb. Afweb the awabanche, it took us a week to cwibb out."

  end
  it 'takes the ipsum and makes it wubby' do
    wubit(@unwubbed).should eq(@wubbed)

  end

end

describe "wubbing a String" do
  before(:each) do
    @first = "For now I think I'll stay indoors"
    @wub = "wob wob I twibk I'll swab indoors"
  end

  it "should return a wubbed string without mutating the original" do
    @first.wubcase.should eq(@wub)
    @first.should eq(@first)
  end


  it "should wubcase in-place" do
    @first.wubcase!
    @first.should eq(@wub)
  end
end
