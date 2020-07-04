Customfield.create!(uuid: "pet_name", title: "Pet Name", field_type: "short_answer", required: true, applicable_to: "pet")
# #uuid, title, type, required, deleted, applicable_to
# -uuid
#     - an unique identifier, used in the clients.csv or children.csv
#     - e.g. “occupation” we will have a column with the same name in the clients.csv with different values for each client
# - type
#     - possible values: date/short_answer/paragraph/phone/email
# -  applicable_to
#     - possible values: client/pet/vehicle
#     - if the type is client, the custom field will be applied to the client record; if it’s pet it will be applied to the pet record.
# - required
#     - if true a client/pet can’t be created without filling up this field
