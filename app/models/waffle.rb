class Waffle < ApplicationRecord
  validates :name,
      presence: true,
      length: { minimum: 5 }
  validates :price,
      presence: true,
      numericality: { greater_than: 0 }

  mount_uploader :image, WaffleImageUploader

end
