class Run < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user, :user_id, :date, :distance, :hours, :minutes, :notes, :seconds
end
