class Clients < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
end
