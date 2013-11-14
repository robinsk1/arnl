require 'spec_helper'

describe "Cars" do
  describe "GET /search" do
    it "works!" do
      get search_path(:registration => "SO06DNV", :stock_ref => "ARNFH-U-5728")
      response.status.should be(200)
    end
  end
end
