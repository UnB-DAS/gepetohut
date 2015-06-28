FactoryGirl.define do
  factory :admin, class: User do
    name "administrator"
    address "endereço_administrator"
    email "admin_user@gepetohut.com"
    password "12345678"

    after( :create ) do |user| 
      user.add_role :admin
      user.remove_role :customer
    end
  end

  factory :manager, class: User do
    name "authority"
    address "endereço_authority"
    email "manager_user@gepetohut.com"
    password "12345678"

    after( :create ) do |user| 
      user.add_role :manager
      user.remove_role :customer
    end
  end

  factory :customer, class: User do
    name "guest"
    address "endereço_guest"
    email "customer_user@gepetohut.com"
    password "12345678"

    after( :create ) do |user| 
      user.add_role :customer
    end
  end
end
