class Employee < ActiveRecord::Base
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	#HBTM: has and belongs to many
	has_and_belongs_to_many :projects
end
