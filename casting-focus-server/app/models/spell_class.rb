class SpellClass < ApplicationRecord
  belongs_to :spell
  belongs_to :characterclass
end
