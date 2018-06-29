class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age)
  end
end
