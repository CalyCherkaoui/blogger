class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  # tag_list attribute setter

  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end

  # tag_list attribute getter
  def tag_list
    self.tags.collect do | tag |
      tag.name
    end.join(",")
  end
end
