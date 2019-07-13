class Blog < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :taggings
  has_many :tags, through: :taggings
  validates :title, :description, presence: true


  def self.tagged_with(name)
    Tag.find_by!(name: name).blogs
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(tag_name)
    return if tag_name.blank?
    tag_name_arr = tag_name.split(',')
    self.tags = tag_name_arr.map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
