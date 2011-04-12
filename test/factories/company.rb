FactoryGirl.define do
  factory :company do
    sequence :name    do |n| "Company #{n}" end
    sequence :address do |n| "Address of the company #{n}- somewhere in company town" end
  end
end

