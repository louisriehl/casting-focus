class Spell < ApplicationRecord
    has_many :spell_klasses
    has_many :klasses, through: :spell_klasses
end
