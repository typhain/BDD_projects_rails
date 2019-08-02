require 'faker'
50.times do
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
end


50.times do
  Appointment.create(doctor: Doctor.all.sample, patient: Patient.all.sample, date: Faker::Date.forward(days: 30))
end

50.times do
  Specialty.create(name: ["allergologue", "anesthésiste", "cardiologue", "chirurgien", "généraliste", "dermatologiste", "endocrinologue"].sample)
end


50.times do
  JoinTableSpecialtyDoctor.create(doctor: Doctor.all.sample, specialty: Specialty.all.sample)
end
