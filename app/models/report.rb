class Report < ApplicationRecord
  belongs_to :student
  has_rich_text :contents
  has_one_attached :document
end
