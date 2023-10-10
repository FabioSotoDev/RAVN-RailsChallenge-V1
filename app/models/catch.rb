class Catch < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon
end

# use really destroy from paraonia gem