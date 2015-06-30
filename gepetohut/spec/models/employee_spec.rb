require 'rails_helper'

RSpec.describe Employee, type: :model do
 let(:valid_attributes) { 
      (FactoryGirl.build :employee).attributes.symbolize_keys.select {|_, value| !value.nil? }
  }

  let!(:employee){  FactoryGirl.build(:employee) }
  let!(:restaurant){ FactoryGirl.build(:restaurant)}
  it "has a valid factory" do
     # Using the shortened version of FactoryGirl syntax.
     # Add:  "config.include FactoryGirl::Syntax::Methods" (no quotes) to your spec_helper.rb
     expect(FactoryGirl.build(:employee)).to be_valid
  end 
 
 
end
