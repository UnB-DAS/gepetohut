class User < ActiveRecord::Base
  rolify
  after_create :default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :orders, dependent: :destroy
  has_many :evaluations, through: :orders

  private
  def default_role
    self.roles << Role.find_by_name( "customer" )
    self.save!
  end
end
