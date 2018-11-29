class Spell < ApplicationRecord
    has_many :spell_classes

    has_many :character_classes, through: :spell_classes
end
