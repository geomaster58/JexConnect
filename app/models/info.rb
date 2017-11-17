class Info < ApplicationRecord
  belongs_to :users, optional: true
  enum sobriety: { sober: 2, clean: 1, not_specified: 0 }
end
