module Mastermind
   class Slots
     attr_accessor :value, :slots, :row
     def initialize(slots = 12, value = 0)
       @slots = slots
       @value = value
       @row = Array.new(slots) { value }
     end
   end
end