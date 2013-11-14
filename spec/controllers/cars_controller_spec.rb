require 'spec_helper'

describe CarsController do

describe "GET index" do
    it "renders the index template" do
      get :index, :registration => "SO06DNV", :stock_ref=>"ARNFH-U-5728"
      expect(response).to render_template("index")
    end
end

end
