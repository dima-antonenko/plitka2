class Banner < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :small => "550x220>" }, :default_url => "/images/:style/missing.png"
   validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
