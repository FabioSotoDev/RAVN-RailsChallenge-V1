class Pokemon < ApplicationRecord
  has_many :catches, dependent: :destroy
end
