class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age

  def self.average_age
    average(:age)
  end
end
