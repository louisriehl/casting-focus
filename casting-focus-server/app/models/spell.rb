class Spell < ApplicationRecord
    has_many :spellclasses

    has_many :characterclasses, through :spellclasses
end
