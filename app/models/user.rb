class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
	
	has_many :users_roles, :dependent => :delete_all
	has_many :roles, :through => :users_roles
	has_one :personel_information
	#validates :fullname, :length => { :maximum => 40 }
  #validates :shortbio, :length => { :maximum => 500 }
#	current_user.update_attribute :admin, true
	
	def is_admin?
		status= false
		self.roles.each do |role|
			if role.name == 'Admin'
			 status=true
			end
		end
		return status
	end	

	def self.activate_admin(email)
		current_user=User.find_by_email(email)
		admin_role=Role.active.find_by_name('Admin')
		@ur=UsersRole.new
		@ur.user_id=current_user
		@ur.role_id=admin_role
		@ur.status=true
		if @ur.save!
				puts "Admin created...."
		else
				puts "Admin Not created...."
		end
	end

	def permanent_address
		self.personel_information.personel_information.find_by_parent_type("Father")
	end

	def temporary_address
		self.personel_information.personel_information.find_by_parent_type("Father")
	end
end
