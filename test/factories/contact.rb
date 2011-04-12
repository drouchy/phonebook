FactoryGirl.define do
  factory :contact do
    sequence :first_name   do |n| "User #{n}" end
    sequence :last_name    do |n| "last name #{n}" end
    phone_number           do "00 #{random_integer_with_leading_zero(3)} #{random_integer_with_leading_zero(4)}" end
    email                  do "#{first_name}.#{last_name}@mydomain.com".downcase.gsub(/ /,'') end
    twitter_account        nil
    association :company, :factory => :company
  end
end

