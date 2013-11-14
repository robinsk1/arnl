require "spec_helper"

describe VisitorsController do
  describe "routing" do

    it "routes to #index" do
      get("/search").should route_to("cars#index")
    end

  end
end

