require "useful_duration/version"
require 'active_support/duration'
require 'active_support/core_ext/time/calculations'
require 'active_support/core_ext/time/acts_like'
require 'active_support/core_ext/string/inflections.rb'

module UsefulDuration

  def self.included(base)
    # Some nice - built in durations
    useful_duration :bravehearts,         10620
    useful_duration :in_a_gadda_da_vidas,  1023
    useful_duration :doctor_zhivagos,     11820
  end

  def useful_duration name, value
    # Send a `define_method` to Numeric class
    Numeric.send(:define_method, name) do
      ActiveSupport::Duration.new(self * value, [[:seconds, self * value]])
    end

    # Alias the "singular" method with it
    # For example, useful_duration :fortnights, 1209600
    #   will create #fortnights and #fortnight
    Numeric.send(:alias_method, singular_method(name), name)
  end

  private
  # Helper function to "singularlize" a method name (as a symbol)
  # Using ActiveSupport::Inflector::Inflections
  def singular_method name
    name.to_s.singularize.to_sym
  end

end
