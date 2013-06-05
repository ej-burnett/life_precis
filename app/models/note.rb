class Note < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description
end
