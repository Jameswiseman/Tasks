class Tasks < ActiveRecord::Base
  belongs_to :user
  belongs_to :clients
end
