class AdminAuthorization < ActiveAdmin::AuthorizationAdapter
	# User authentication
	def authorized?(action, subject = nil )
		# Is user logged in && Is user admin
		user && user.admin?
	end
end