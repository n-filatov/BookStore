require 'rails_helper'

RSpec.describe "DiscountItems", type: :request do
  describe "GET /discount_items" do
    it "works! (now write some real specs)" do
      get discount_items_path
      expect(response).to have_http_status(200)
    end
  end
end
