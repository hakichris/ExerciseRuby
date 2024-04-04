class CustomerOrder < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true
    validates :amount_ordered, presence: true, numericality: {only_integer: true, greater_than:0}
    validates :phoneNumber, presence: true
end
