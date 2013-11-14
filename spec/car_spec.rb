require 'spec_helper'

describe Car do

  before(:each) do
    @registration, @stock_ref =  "SO06DNV", "ARNFH-U-5728"
  end

  it "should create a new instance given a valid attributes" do
    Car.new(@registration, @stock_ref)
  end

  it "should assign obfuscated key from combination of registration and stock ref" do
    car = Car.new(@registration, @stock_ref)
    expected ="AVRNNDF6H0-OUS2"
    expect(car.obfuscate).to eq(expected)
  end

  it "should create a list of image urls" do
    car = Car.new(@registration, @stock_ref)
    expected = ["http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/f",
                "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/i",
                "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/r",
                "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/4",
                "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/5",
                "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/800/6",
                "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/f",
                "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/i",
                "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/r",
                "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/4",
                "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/5",
                "http://imagecache.arnoldclark.com/imageserver/AVRNNDF6H0-OUS2/350/6"] 
   expect(car.image_urls).to eq(expected)
  end
 
end


