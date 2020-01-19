class Person < ApplicationRecord
    has_many :addresses
    accepts_nested_attributes_for :addresses, allow_destroy: true
end
