# Require controllers
require 'pepipost/controllers/email_controller.rb'

module Pepipost
  class PepipostClient
    # Singleton access to email controller
    # @return [EmailController] Returns the controller instance
    def email
      EmailController.instance
    end

  end
end
