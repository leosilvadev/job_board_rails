class Car < ActiveRecord::Base
  attr_accessor :brand, :model, :year
  validates_presence_of :brand, :model
end
