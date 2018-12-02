# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Import spell data from JSON file to seed DB

spell_list = JSON.parse(File.read('db/spells.json'))

puts 'Destroy old spells...'
Spell.destroy_all

puts 'Create spells again...'
spell_list.each do |spell|
    @spell = Spell.create!(
        name: spell['name'],
        desc: spell['desc'],
        range: spell['range'],
        page: spell['page'],
        components: spell['components'],
        ritual: spell['ritual'],
        concentration: spell['concentration'],
        casting_time: spell['casting_time'],
        level: spell['level'],
        school: spell['school']
    )
end