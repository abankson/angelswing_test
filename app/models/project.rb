class Project < ApplicationRecord
  has_many :contents
  validates_presence_of :title
end
