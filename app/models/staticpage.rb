class Staticpage < ActiveRecord::Base
	scope :published, where(:published => true)
scope :unpublished, where(:published => false)
end
