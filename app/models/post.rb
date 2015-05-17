class Post < ActiveRecord::Base
	belongs_to :post_category

	validates :title, presence: true
	validates :post_category_id, presence: true


	has_attached_file :avatar, :styles => { :medium => "350x220>", :thumb => "80x80>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
