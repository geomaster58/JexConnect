class Info < ApplicationRecord
  extend FriendlyId
  friendly_id :first_name, use: :slugged
  belongs_to :users, optional: true
  enum sobriety: { sober: 2, clean: 1, not_specified: 0 }
  mount_uploader :picture, InfoUploader
end
