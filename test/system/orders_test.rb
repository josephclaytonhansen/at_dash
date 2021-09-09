require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Amount", with: @order.amount
    check "Created" if @order.created
    fill_in "Customer email", with: @order.customer_email
    fill_in "Customer name", with: @order.customer_name
    check "Needs follow up" if @order.needs_follow_up
    fill_in "Revenue", with: @order.revenue
    check "Shipped" if @order.shipped
    fill_in "Stamps", with: @order.stamps
    fill_in "Tracking number", with: @order.tracking_number
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @order.amount
    check "Created" if @order.created
    fill_in "Customer email", with: @order.customer_email
    fill_in "Customer name", with: @order.customer_name
    check "Needs follow up" if @order.needs_follow_up
    fill_in "Revenue", with: @order.revenue
    check "Shipped" if @order.shipped
    fill_in "Stamps", with: @order.stamps
    fill_in "Tracking number", with: @order.tracking_number
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
