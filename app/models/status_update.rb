class StatusUpdate < ActiveRecord::Base
  validates :user, :status, :likes, presence: true
end
