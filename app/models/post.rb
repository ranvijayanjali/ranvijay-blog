class Post < ActiveRecord::Base
	 belongs_to :user
	   obfuscate_id

end
