class ApplicationController < ActionController::Base
  #DeviseWhitelist(In Concerns) has controller actions for allowing new parameters to the User devise model
  include DeviseWhitelist

end
