module Pepipost
  class Attributes
    # TODO: Write general description for this method
    # @return [Array<String>]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [Array<String>]
    attr_accessor :regid

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
      hash['NAME'] = name
      hash['REGID'] = regid
      hash
    end
  end
end
