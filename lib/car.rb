require 'active_model'

class Car
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  SIZE = %w{800 350}
  CAMERA = %w{f i r 4 5 6}
  IMAGE_SERVER = "http://imagecache.arnoldclark.com/imageserver" 

  attr_accessor :registration, :stock_ref, :obfuscated_id

  validates_presence_of :registration, :stock_ref

  def initialize(registration, stock_ref)
    @registration = registration
    @stock_ref = stock_ref
  end


  def image_urls
    result = Array.new
    obs = self.obfuscate
    Car::SIZE.each do |size|
      Car::CAMERA.each do |camera|
          result << IMAGE_SERVER+"/"+obs+"/"+size+"/"+camera 
      end
    end
    result
  end

  def persisted?
    false
  end

  def obfuscate
    reversed_reg = self.registration.reverse.chars.to_a
    stock_id = self.stock_ref.chars.to_a
    obs = stock_id.zip(reversed_reg).flatten.join
    trim_length = reversed_reg.length + (reversed_reg.length - 1)
    obs[0..trim_length].concat(self.stock_ref.delete("^a-zA-Z0-9")[8])
  end


end
