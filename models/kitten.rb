class Kitten < ActiveRecord::Base
  validates :url, presence: true
end
