class WaffleImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  width = 100
  height = 50

  # storage :fog
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url(*args)
    ActionController::Base.helpers.asset_path("default.png")
  end

  process resize_to_fit: [5*width, 5*height]

  version :small do
    process resize_to_fit: [width,height]
  end

end
