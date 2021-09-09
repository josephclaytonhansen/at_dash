class Order < ApplicationRecord
    validates :amount, presence: true, numericality: {greater_than: 0}
    validates :customer_name, presence: true
    validates :customer_email, presence: true
end
