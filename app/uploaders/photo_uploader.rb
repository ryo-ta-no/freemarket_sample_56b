class PhotoUploader < CarrierWave::Uploader::Base
  if Rails.env.development?
    storage :file
  end

  if Rails.env.test?
    storage :file
  end

  if Rails.env.production?
    storage :fog
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  include CarrierWave::MiniMagick
  process resize_to_fit: [1500, 1500]
end
