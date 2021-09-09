json.extract! order, :id, :created, :shipped, :amount, :stamps, :revenue, :customer_name, :customer_email, :needs_follow_up, :tracking_number, :created_at, :updated_at
json.url order_url(order, format: :json)
