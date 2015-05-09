class Slide < ActiveRecord::Base
   belongs_to :slider

   has_attached_file :avatar, :styles => { :medium => "698x320>" }, :default_url => "/images/:style/missing.png"
   validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end