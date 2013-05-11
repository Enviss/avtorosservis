class Post < ActiveRecord::Base
  attr_accessible :content, :title, :url

  validates :url, uniqueness: true, presence: true
  validates :title, uniqueness: true, presence: true
  validates :content, presence: true
end
