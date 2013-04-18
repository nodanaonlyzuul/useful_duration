require "useful_duration/version"
require 'active_support/duration'
require 'active_support/core_ext/time/calculations'
require 'active_support/core_ext/time/acts_like'

class Numeric

  def bravehearts
     ActiveSupport::Duration.new(self * 10620, [[:seconds, self * 10620]])
  end
  alias :braveheart :bravehearts

  def in_a_gadda_da_vidas
    ActiveSupport::Duration.new(self * 1023, [[:seconds, self * 1023]])
  end
  alias :in_a_gadda_da_vida :in_a_gadda_da_vidas

end