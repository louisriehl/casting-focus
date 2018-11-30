class Klass < ApplicationRecord
    has_many :spell_klasses
    has_many :spells, through: :spell_klasses
end
