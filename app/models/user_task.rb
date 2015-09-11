class UserTask < ActiveRecord::Base
  belongs_to :user
  validates :description, :due, presence: true
end
