# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

p Company.all.count

kellogg = Company.where({ name: "Kellogg"})[0]
puts kellogg.inspect

values = { first_name: "Craig",
            last_name: "Bumpus",
            email: "c.g@apple.com",
            phone_number: "3152739365",
            company_id: kellogg.id }
 contact = Contact.new(values)
contact.save
    
booth = Company.where({ name: "Booth"})[0]
booth_id = booth.id

contact = Contact.new
contact.first_name = "Clif"
contact.last_name = "Bersani"
contact.email = "cbersani@booth.edu"
contact.phone_number = "3152738765"
contact.company_id = booth_id
contact.save


ross = Company.where({ name: "Ross"})[0]

values = { first_name: "Brian",
            last_name: "Ross",
            email: "bross@ross.com",
            phone_number: "3279365723",
            company_id: ross.id }
 contact = Contact.new(values)
contact.save
    


# 2. create 1-2 new contacts for each company (they can be made up)

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
