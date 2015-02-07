class Product < ActiveRecord::Base
	belongs_to :category
	has_many :images, dependent: :destroy

	has_attached_file :prod_img, styles: {
	    square: '248x286#'
	    
	  }

	  # Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :prod_img, :content_type => /\Aimage\/.*\Z/
end
