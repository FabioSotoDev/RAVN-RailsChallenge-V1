class Pokemon < ApplicationRecord
  acts_as_paranoid

  has_many :catches, dependent: :destroy
end
