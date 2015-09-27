class Topic < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_one :category
  mount_uploader :topic_pic,TopicPicUploader
  validates :heading,presence: true
  validates :category_id,presence: true
  validates :content,presence: true
end
