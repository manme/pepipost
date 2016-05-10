module Pepipost
  class Emailv1
    # Your secret API Key
    # @return [String]
    attr_accessor :api_key

    # TODO: Write general description for this method
    # @return [EmailDetails]
    attr_accessor :email_details

    # TODO: Write general description for this method
    # @return [Array<String>]
    attr_accessor :x_apiheader

    # TODO: Write general description for this method
    # @return [Settings]
    attr_accessor :settings

    # TODO: Write general description for this method
    # @return [Array<String>]
    attr_accessor :recipients

    # TODO: Write general description for this method
    # @return [Attributes]
    attr_accessor :attributes

    # TODO: Write general description for this method
    # @return [Files]
    attr_accessor :files

    def method_missing(method_name)
      puts "there's no method called '#{method_name}'"
    end

    # Creates JSON of the curent object
    def to_json
      hash = key_map
      hash.to_json
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['api_key'] = api_key
      hash['email_details'] = email_details
      hash['X-APIHEADER'] = x_apiheader
      hash['settings'] = settings
      hash['recipients'] = recipients
      hash['attributes'] = attributes
      hash['files'] = files
      hash
    end
  end
end
