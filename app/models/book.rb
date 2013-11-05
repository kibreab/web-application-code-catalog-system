class Book < ActiveRecord::Base
	#This is book model, for this specific practical exercise, there isnot much to do in the model
  	mount_uploader :coverpic, CoverimgUploader
end

