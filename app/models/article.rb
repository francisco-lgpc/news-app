class Article < ApplicationRecord
  belongs_to :author

  mount_uploader :audio, AudioUploader
end
