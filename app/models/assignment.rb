class Assignment < ActiveRecord::Base
  validates_presence_of [:link, :title, :level]

  LEVELS = ["required", "suggested", "extra credit"]
end
