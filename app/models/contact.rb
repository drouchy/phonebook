class Contact < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "140x140>", :thumb => "50x50" }
  belongs_to :company
  
  attr_accessible :first_name, :last_name, :email, :phone_number, :twitter_account, :picture, :company_id
  
  attr_reader :name
  attr_accessible :name

  validates :email, :uniqueness => true, :format => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :phone_number, :format => /00 \d{3} \d{6}/
  
  def name
    "#{first_name} #{last_name}"
  end

end
