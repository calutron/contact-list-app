require_relative 'contact'

#contact = Contact.create("trelolo", "trelolo@gmail.com")
contacts=Contact.all
id=contacts.count+1
Contact.create(id.to_s,"trololo","rte@gmail.com")

# #another method of entering id
# contacts=Contact.all
# total_count=contacts.count
# puts "total count #{total_count}"
# last_contact=contacts[total_count-1]
# puts last_contact[0]
# id=last_contact[0].to_i+1
#puts last_contact
# Contact.create(id.to_s,"TestName","TestEmail.com")







