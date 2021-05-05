# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

operating_systems = OperatingSystem.create([
    {name: "Linux Ubuntu"},
    {name: "Windows XP"},
    {name: "Windows 10"},
    {name: "Windows 7"},
    {name: "Mac Os X"}
])

devices = Device.create([
    {name: "Desktop"},
    {name: "laptop"},
    {name: "server"},
    {name: "printer"},
    {name: "nas"}
])

services = Service.create([
    {name: "cylotron", floor: -1},
    {name: "cylotron", floor: -2},
    {name: "isotopes", floor: 4},
    {name: "petscan", floor: -1},
    {name: "petscan", floor: -2}
])

sectors = Sector.create([
    {name: "Couloir chimistes", service_id: 1},
    {name: "Couloir Serge", service_id: 1},
    {name: "Couloir chercheurs", service_id: 1},
    {name: "Petscan 1", service_id: 2},
    {name: "Petscan 2", service_id: 2},
    {name: "Secrétariat", service_id: 2},
    {name: "Labos & Cyclo", service_id: 2}
])

rooms = Room.create([
    {name: "Salle protocole", number: "02W/5021", sector_id: 4},
    {name: "Caméra TF", number: "", sector_id: 4},
    {name: "Salle acquisition TF", number: "02W/5020", sector_id: 4},
    {name: "Salle informatique", number: "", sector_id: 2},
    {name: "Bureau Nico Antonin", number: "", sector_id: 2},
    {name: "Bureau Serge", number: "", sector_id: 2},
    {name: "Bureau Xavier", number: "", sector_id: 2},
])