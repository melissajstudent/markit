class Bookmark < ApplicationRecord
  belongs_to :topic
  belongs_to :user
  has_many :likes, dependent: :destroy

  validates :topic, presence: true
  validates :url, presence: true
end
