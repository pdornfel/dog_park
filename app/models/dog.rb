class Dog < ActiveRecord::Base

  validates_presence_of :name

  has_many :owner_dogs
  has_many :owners, through: :owner_dogs


end