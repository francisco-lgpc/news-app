# encoding: utf-8

class AudioUploader < CarrierWave::Uploader::Base
  include CarrierWave::Audio
  storage :file
end
