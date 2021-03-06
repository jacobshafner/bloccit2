require 'rails_helper'
# #1 we describe the subject of the spec, WelcomeController
RSpec.describe WelcomeController, type: :controller do

  describe "GET index" do
    it "renders the index template" do
# #2 We use get, at #2, to call the index of WelcomeController
      get :index
# #3 We expect the controller's response to render the index template.
      expect(response).to render_template("index")
    end
  end

  describe "GET about" do
    it "renders the about template" do
      get :about
      expect(response).to render_template("about")
    end
  end
end
