require 'spec_helper'

describe "Placing an order" do
  context "when I'm placing a new order" do
    before(:each) { visit new_order_path }

    context "and I enter invalid information" do
      before(:each) { click_link_or_button('Create Order') }
      
      it "should stay on the current page" do
        page.should have_content("New Order")
      end
    end

    context "and I enter valid information" do
      before do
        fill_in "Credit Card Number", with: 4242424242424242
        fill_in "Security Code on Card (CVV)", with: 234
        select("1 - January", from: :card_month)
        select("2013", from: "card_year")
      end

      it "takes me to the order confirmation page"
      # need to figure out some way to test without making an inline API call
    end
  end
end