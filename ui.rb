require_relative 'contact'

class UI

  def initialize
    puts "UI is up"
  end

  def instructions
    print "What do you need?\n Search Contact List: 1\n Show all Contacts: 2\n Create New Contact: 3\n >"
    user_input = gets.chomp
    user_input.downcase.to_s
  end

  def trigger
    tgr = Ui.instructions
      if tgr == "2"
        ui.prompt_search
      else
        puts "not right"
      end
    end

    ARGV[1] = Contact.find("term")
end


  # def prompt_search
  #   Contact.all
  # end
    
# def trigger
#   ui = UI.new
#   tgr = ui.instructions
#     if tgr == "2"
#       ui.prompt_search
#     else
#       puts "not right"
#     end
# end

# puts trigger


#create new contact




# user_input = gets.chomp

# ARGV[0] = user input

# Contact.create("name", "email")

# # quit unless our script gets two command line arguments
# # unless ARGV.length == 1
# #   puts "Sorry, not the right number of arguments."
# #   puts "Usage: ruby MyScript.rb InputFile.csv SortedOutputFile.csv\n"
# #   exit
# # end

# #display all contacts
# Contact.all

# #search
# Contact.find("term")

# #search by id
# Contact.find("id")