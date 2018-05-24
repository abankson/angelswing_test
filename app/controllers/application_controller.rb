class ApplicationController < ActionController::Base
  #DeviseWhitelist(In Concerns) has controller actions for allowing new parameters to the User devise model
  include DeviseWhitelist
  #CurrentUserConcern(In Concerns) sets guest user is not current_user
  include CurrentUserConcern

end
