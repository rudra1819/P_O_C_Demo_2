class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

         def self.ransackable_attributes(auth_object = nil)
          # Return an array of attributes you want to allow searching on
          %w[email username role first_name last_name] # Adjust these based on your AdminUser model
        end
end
