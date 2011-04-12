module CompaniesHelper
  
  def get_contacts_to_json(contacts)
    contacts.to_json(:only => [:id], :methods => [:name])
  end
end
