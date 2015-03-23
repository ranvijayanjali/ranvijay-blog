class Blog < ActiveRecord::Base
	has_many :posts
 obfuscate_id
end
