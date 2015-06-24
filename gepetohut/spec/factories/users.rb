FactoryGirl.define do
  factory :admin, class: User do
    name "admin"
    address "endereço"
    email "admin_user@gepetohut.com"
    password "12345678"

    after( :create ) do |user| 
      user.add_role :admin
      user.remove_role :customer
    end
  end

  factory :manager, class: User do
    name "manager"
    address "endereço"
    email "manager_user@gepetohut.com"
    password "12345678"

    after( :create ) do |user| 
      user.add_role :manager
      user.remove_role :customer
    end
  end

  factory :customer, class: User do
    name "customer"
    address "endereço"
    email "customer_user@gepetohut.com"
    password "12345678"

    after( :create ) do |user| 
      user.add_role :customer
    end
  end
end
