# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

MedicalCenterType.create(name: "Hospital", description: Faker::Lorem.sentence(word_count: 5))
MedicalCenterType.create(name: "Clinica", description: Faker::Lorem.sentence(word_count: 5))
MedicalCenterType.create(name: "Sanatorio", description: Faker::Lorem.sentence(word_count: 5))
MedicalCenterType.create(name: "Dispensario", description: Faker::Lorem.sentence(word_count: 5))
MedicalCenterType.create(name: "Salita", description: Faker::Lorem.sentence(word_count: 5))

WorkerType.create(name: "Medico", description: Faker::Lorem.sentence(word_count: 3))
WorkerType.create(name: "Enfermero", description: Faker::Lorem.sentence(word_count: 3))
WorkerType.create(name: "Chofer", description: Faker::Lorem.sentence(word_count: 3))

Worker.create(first_name: Faker::Name.name , last_name: Faker::Name.last_name, email: Faker::Internet.email , phone: Faker::PhoneNumber.cell_phone, worker_type_id: 1)
Worker.create(first_name: Faker::Name.name , last_name: Faker::Name.last_name, email: Faker::Internet.email , phone: Faker::PhoneNumber.cell_phone, worker_type_id: 1)

Worker.create(first_name: Faker::Name.name , last_name: Faker::Name.last_name, email: Faker::Internet.email , phone: Faker::PhoneNumber.cell_phone, worker_type_id: 2)
Worker.create(first_name: Faker::Name.name , last_name: Faker::Name.last_name, email: Faker::Internet.email , phone: Faker::PhoneNumber.cell_phone, worker_type_id: 2)

Worker.create(first_name: Faker::Name.name , last_name: Faker::Name.last_name, email: Faker::Internet.email , phone: Faker::PhoneNumber.cell_phone, worker_type_id: 3)
Worker.create(first_name: Faker::Name.name , last_name: Faker::Name.last_name, email: Faker::Internet.email , phone: Faker::PhoneNumber.cell_phone, worker_type_id: 3)

MedicalCenter.create(name: Faker::Company.name , description: Faker::Lorem.sentence(word_count: 3) , address: Faker::Address.street_address , phone: Faker::PhoneNumber.cell_phone ,medical_center_type_id: 1)

MedicalCenter.create(name: Faker::Company.name , description: Faker::Lorem.sentence(word_count: 3) , address: Faker::Address.street_address , phone: Faker::PhoneNumber.cell_phone ,medical_center_type_id: 2)

MedicalCenter.create(name: Faker::Company.name , description: Faker::Lorem.sentence(word_count: 3) , address: Faker::Address.street_address , phone: Faker::PhoneNumber.cell_phone ,medical_center_type_id: 3)

MedicalCenter.create(name: Faker::Company.name , description: Faker::Lorem.sentence(word_count: 4) , address: Faker::Address.street_address , phone: Faker::PhoneNumber.cell_phone ,medical_center_type_id: 4)


