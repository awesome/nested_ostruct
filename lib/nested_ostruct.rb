require 'ostruct'

class NestedOstruct < OpenStruct

  # removing Object#hash to prevent namespace collision with arg hash key "hash"
  undef :hash



  # use variable to store :initialize
  old_initialize  = instance_method(:initialize)

  # Nested ostruct from hash. Does not convert hashes within arrays; for that use gem: recursive-open-struct
  #
  # @see https://github.com/aetherknight/recursive-open-struct
  # @see https://github.com/RailsApps/rails-stripe-checkout/pull/1/files#diff-cfaad7bb2a17389cf6b4d9a2a734f3d9R12
  #
  # @param  hash [Hash]
  # @return      [NestedOstruct]
  define_method(:initialize) do |hash|
    old_initialize.bind(self).(hash.inject({}){|r,p| r[p[0]] = p[1].kind_of?(Hash) ? NestedOstruct.new(p[1]) : p[1]; r })
  end



  # alias and remove super method
  alias_method :old_to_h, :to_h
  undef :to_h

  # redefine :to_h to use same public class method :parse
  #
  # @return [Hash]
  def to_h
    NestedOstruct.parse(self)
  end



  # OpenStruct to Hash
  #
  # @param  object  [OpenStruct]
  # @return         [Hash]
  def self.parse(object)
    case
    when object.is_a?(NestedOstruct)
      object = object.old_to_h
    when object.is_a?(OpenStruct)
      object = object.to_h
    end

    case object.class.to_s
    when /Hash/
      object.each do |key, value|
        if [Hash, Array, OpenStruct, NestedOstruct].include?(value.class)
          object[key] = NestedOstruct.parse(value)
        else
          object[key] = value
        end
      end

    when /Array/
      object.each_with_index do |value, i|
        if [Hash, Array, OpenStruct, NestedOstruct].include?(value.class)
          object[i] = NestedOstruct.parse(value)
        else
          object[i] = value
        end
      end
    end

    object
  end

end
