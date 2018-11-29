class CharacterClassesSpell < ApplicationRecord
  belongs_to :spell
  belongs_to :character_class
end
