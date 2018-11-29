class Spell < ApplicationRecord
    has_many :character_classes_spells

    has_many :spells, through: :character_classes_spells
end
