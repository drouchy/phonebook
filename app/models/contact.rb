class Contact < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "140x140>", :thumb => "50x50" }
  belongs_to :company
end
