class Book < ActiveRecord::Base
  belongs_to :reading_list
  has_many :reviews
end
