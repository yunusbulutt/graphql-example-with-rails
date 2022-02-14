module Enum
  class CustomerTypeType < BaseEnum
    Customer.types.each do |key, value|
      value(key, value: value)
    end
  end
end
