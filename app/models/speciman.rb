class Speciman < ActiveRecord::Base
  belongs_to :physician
  has_many :results
end