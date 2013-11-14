require "spec_helper"

describe VisitorsController do
  describe "routing" do

    it "routes to #index" do
      get("/").should route_to("visitors#new")
    end

  end
end

