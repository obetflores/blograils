class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  belongs_to :category

  scope :published, -> {where status: true}
end
