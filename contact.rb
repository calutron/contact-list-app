require_relative 'contact_database'
class Contact
 
  attr_accessor :name, :email, :id

  def initialize(id, name, email)
    @id=id
    @name = name
    @email = email
    puts "contact is up"
  end
 
  def to_s
    # TODO: return string representation of Contact
  end
 
  ## Class Methods
  class << self
    def create(id,name,email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
      contact = Contact.new(id, name, email)   
      create_newcontact(contact)
      #create_newcontact(contact)
      # self.new
      # contact = []
      # contacts << ["name", "email"]
    end
 
    def find(term)
      # TODO: Will find and return contacts that contain the term in the first name, last name or email
    end
 
    def all
      # TODO: Return the list of contacts, as is
      contacts=CSV.read('contacts.csv')
    end
    
    def show(id)
      # TODO: Show a contact, based on ID
    end
    
  end
 
end