Batchmanifest.where(filename: "clients.csv", filetype: "clients").first_or_create
Batchmanifest.where(filename: "locations.csv", filetype: "locations").first_or_create
Batchmanifest.where(filename: "categories.csv", filetype: "categories").first_or_create
Batchmanifest.where(filename: "services.csv", filetype: "services").first_or_create
Batchmanifest.where(filename: "pricings.csv", filetype: "pricings").first_or_create
Batchmanifest.where(filename: "employees.csv", filetype: "employees").first_or_create
Batchmanifest.where(filename: "addonmappings.csv", filetype: "addonmappings").first_or_create
Batchmanifest.where(filename: "breedgroups.csv", filetype: "breedgroups").first_or_create
Batchmanifest.where(filename: "pets.csv", filetype: "pets").first_or_create
Batchmanifest.where(filename: "appointments.csv", filetype: "appointments").first_or_create
Batchmanifest.where(filename: "appointment_services.csv", filetype: "appointment_services").first_or_create
Batchmanifest.where(filename: "appointment_statuses.csv", filetype: "appointment_statuses").first_or_create
Batchmanifest.where(filename: "appointment_manifest.csv", filetype: "appointment_manifest").first_or_create

puts "Batch manifest created"
