class User < ActiveRecord::Base
  has_many :bucketlists
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def sign_in
    default_params.permit(:username, :email)

      
  end
end



