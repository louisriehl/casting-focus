class CharacterClass < ApplicationRecord
    has_many :spell_classes

    has_many :spells, through :spell_classes
end
