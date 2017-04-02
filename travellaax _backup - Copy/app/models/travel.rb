class Travel < ApplicationRecord
  belongs_to :user
  belongs_to :category
  mount_uploader :travel_img, TravelImgUploader

end
