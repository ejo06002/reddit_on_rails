class Vote < ActiveRecord::Base

  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_id, :link_id, :up
  belongs_to :user
  belongs_to :link
end
