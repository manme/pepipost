module Pepipost
  class EmailDetails
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :fromname

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :subject

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :from

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :replytoid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tags

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :content

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
      hash['fromname'] = fromname
      hash['subject'] = subject
      hash['from'] = from
      hash['replytoid'] = replytoid
      hash['tags'] = tags
      hash['content'] = content
      hash
    end
  end
end
