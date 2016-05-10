module Pepipost
  class Settings
    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :footer

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :clicktrack

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :opentrack

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :unsubscribe

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :bcc

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :attachmentid

    # TODO: Write general description for this method
    # @return [Numeric]
    attr_accessor :template

    def initialize
      @footer = true
      @clicktrack = true
      @opentrack = true
      @unsubscribe = true
    end

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
      hash['footer'] = footer
      hash['clicktrack'] = clicktrack
      hash['opentrack'] = opentrack
      hash['unsubscribe'] = unsubscribe
      hash['bcc'] = bcc
      hash['attachmentid'] = attachmentid
      hash['template'] = template
      hash
    end
  end
end
