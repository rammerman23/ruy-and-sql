# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts "There are now #{Company.all.count} companies." 

# 2. create new companies
values = { name: "Kellogg", 
            url: "https://kellogg.northwestern.edu", 
            city: "Evanston", 
            state: "IL"}

kellogg = Company.new(values)
kellogg.save
puts "There are now #{Company.all.count} companies." 

values = { name: "Booth", 
            url: "https://booth.edu", 
            city: "Chicago", 
            state: "IL"}

booth = Company.new(values)
booth.save
puts "There are now #{Company.all.count} companies." 


# 3. query companies table

illinois_company = Company.where({ state: "IL"}) [0]
puts illinois_company.inspect

# 4. read column values from row
puts illinois_company.read_attribute(:url)
puts illinois_company.url

# 5. update attribute value
illinois_company.write_attribute(:slogan, "Brave Leader.")
illinois_company.slogan = "Brave Leader"
illinois_company.save


new_company = Company.new
new_company.name = "Ross"
new_company.url = "ross.edu"
new_company.city = "Ann Arbor"
new_company.state = "MI"
new_company.save

puts "There are now #{Company.all.count} companies." 