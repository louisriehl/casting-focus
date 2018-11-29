# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spells = ActiveSupport::JSON.decode(File.read('db/spells.json'))

puts 'Destroying old classes...'
CharacterClass.destroy_all

puts 'Seeding new classes...'
@bard = CharacterClass.create!(name: "Bard")
@cleric = CharacterClass.create!(name: "Cleric")
@druid = CharacterClass.create!(name: "Druid")
@paladin = CharacterClass.create!(name: "Paladin")
@ranger = CharacterClass.create!(name: "Ranger")
@sorceror = CharacterClass.create!(name: "Sorceror")
@warlock = CharacterClass.create!(name: "Warlock")
@wizard = CharacterClass.create!(name: "Wizard")

puts 'Destroying old spells...'
Spell.destroy_all

puts 'Seeding all spells...'
spells.each do |spell|  
    new_spell = Spell.create!(
        name:           spell["name"],
        desc:           spell["desc"],
        page:           spell["page"],
        range:          spell["range"],
        components:     spell["components"],
        material:       spell["material"],
        duration:       spell["duration"],
        casting_time:   spell["casting_time"],
        level:          spell["level"],
        school:         spell["school"]
        )
        # if spell["class"].split(", ").include?('Warlock')
        #     @warlock.spells = new_spell
        # end
    end