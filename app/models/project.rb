class Project < ActiveRecord::Base
  belongs_to :user

  attr_accessible :user_id, :name, :desc
end
