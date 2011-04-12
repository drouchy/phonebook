class Company < ActiveRecord::Base
  has_many :contacts
  attr_accessible :contact_tokens
  attr_reader :contact_tokens

  attr_accessible :name, :address
  
  def contact_tokens=(ids)
    self.contact_ids = ids.split(',')
  end
  
end
