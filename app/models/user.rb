class User < ApplicationRecord
  has_many :catches, dependent: :destroy
end
