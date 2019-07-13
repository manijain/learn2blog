class Comment < ApplicationRecord
  belongs_to :blog
  validates :body, :commenter, presence: true
end
