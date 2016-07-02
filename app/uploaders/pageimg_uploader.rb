# encoding: utf-8

class PageimgUploader < CarrierWave::Uploader::Base

  storage :file

  def extension_white_list
    %w(jpg png jpeg gif)
  end  

  def store_dir
    "system/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def cache_dir
    'system/uploads/tmp'
  end

end
