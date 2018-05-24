module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest"
    guest.email = "guest@example.com"
    guest.roles = [:guest_user]
    guest
  end
end