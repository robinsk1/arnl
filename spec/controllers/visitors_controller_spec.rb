require 'spec_helper'

describe VisitorsController do


describe "GET new" do
    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
end

end

