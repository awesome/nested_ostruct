require 'ostruct'

module NestedOstruct
  extend self

  def to_hash(object)
    object = object.to_h if object.is_a?(OpenStruct)

    case object.class.to_s
    when /Hash/
      object.each do |key, value|
        if [Hash, Array, OpenStruct].include?(value.class)
          object[key] = to_hash(value)
        else
          object[key] = value
        end
      end

    when /Array/
      object.each_with_index do |value, i|
        if [Hash, Array, OpenStruct].include?(value.class)
          object[i] = to_hash(value)
        else
          object[i] = value
        end
      end
    end

    object
  end
end
