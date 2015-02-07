class Image < ActiveRecord::Base
	belongs_to :product
	has_attached_file :img, styles: {
	    full: '1920x1200#',
	    medium: '800x600#'
	    
	  }

	  # Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/
end
