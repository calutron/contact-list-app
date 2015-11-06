require_relative 'contact_database'

class Contact
  
  @@last_id = 9
  attr_reader :id
  attr_accessor :name, :email


  def initialize(name, email, id = nil)
    @id = id || Contact.all.map(&:id).max + 1
    @name = name
    @email = email
  end

  def to_row
    [@id, @name, @email]
  end
 
  def to_s
    "Contact #{@id}, #{@name} : #{@email}"
    # TODO: return string representation of Contact
  end
 
  ## Class Methods

  class << self
    def create_from(row)
      Contact.new(row[1], row[2], row[0].to_i)
    end

    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
      contact = Contact.new(name, email) #LAST_ID += 1  
      create_newcontact(contact)
    end

    def find(term)
      Contact.all.select { |c| c.name.include?(term) || c.email.include?(term) || c.id == term.to_i }
      # TODO: Will find and return contacts that contain the term in the first name, last name or email
    end
 
    def all
      # TODO: Return the list of contacts, as is
      CSV.read('contacts.csv').map { |row| Contact.create_from(row) }
    end
    
    def show(id)  
      # TODO: Show a contact, based on ID
    end
    
  end
 
end