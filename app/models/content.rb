class Content < ApplicationRecord
  belongs_to :project

  enum content_type: { maps: 0, blueprint: 1 , marker: 2, mapping: 3, lengths: 4, area: 5, volume: 6 }

  validates_presence_of :title, :content_type, :project_id
end
