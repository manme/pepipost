module Pepipost
  class Files
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :example_attachment_1_txt

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
      hash['example_attachment1.txt'] = example_attachment_1_txt
      hash
    end
  end
end
