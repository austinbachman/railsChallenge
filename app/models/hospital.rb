class Hospital < ActiveRecord::Base
  has_many :physicians
end
