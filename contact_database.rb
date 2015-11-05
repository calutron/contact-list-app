
## TODO: Implement CSV reading/writing
require 'csv'
def create_newcontact(contact)
  
  #writing back all the contacts in the CSV again
  CSV.open("contacts.csv", "a+") do |csv|
    csv << [contact.id,contact.name, contact.email]
  end
  puts "Contact Added in the CSV"
  
end
