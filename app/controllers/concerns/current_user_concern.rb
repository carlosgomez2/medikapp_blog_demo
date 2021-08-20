module CurrentUserConcern
  extend ActiveSupport::Concern
  
  def current_user
    # null object pattern
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest_user@example.com"
    guest

    # OpenStruct.new(name: "Guest User", 
    #                first_name: "Guest", 
    #                last_name: "Guest", 
    #                email: "guest@example.com"
    #                )
  end
end