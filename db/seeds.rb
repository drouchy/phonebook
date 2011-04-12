Contact.delete_all
Company.delete_all

Factory(:company, :name => 'Company 1')
Factory(:company, :name => 'Company 2')

20.times do | i |
  Factory(:contact, :company => Company.find_by_name("Company #{i%2 +1}"))
end
