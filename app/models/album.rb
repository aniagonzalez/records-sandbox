class Album < ActiveRecord::Base
  belongs_to :artist
  # validates :title, presence: true
  # validates :label_code, presence: true
end
