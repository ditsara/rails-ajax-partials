class Comment < ApplicationRecord
  belongs_to :parent, class_name: 'Comment', optional: true
  has_many :replies, class_name: 'Comment', foreign_key: 'parent_id'

  validates :content, presence: true

  def self.root
    where(parent_id: nil)
  end
end