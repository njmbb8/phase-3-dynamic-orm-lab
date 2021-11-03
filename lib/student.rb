require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
    def initialize(args = {})
        args.each do |key, value|
            self.class.attr_accessor(key)
            self.send("#{key}=", value)
        end
    end
end
