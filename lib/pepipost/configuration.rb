module Pepipost
  class Configuration
    # The base Uri for API calls
    @base_uri = 'https://api.pepipost.com'

    # create the getters and setters
    class << self
      attr_accessor :base_uri

    end
  end
end
