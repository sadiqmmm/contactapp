class Contact < ActiveRecord::Base
	validates :full_name, :phone_number, :email, presence: true
end
