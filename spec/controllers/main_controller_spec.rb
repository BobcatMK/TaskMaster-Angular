require 'rails_helper'

RSpec.describe MainController, :type => :controller do

    describe "GET home" do
        it "returns http success" do
            get :home
            expect(response).to have_http_status(:success)
        end

        it "should render layouts/application" do
            get "home"
            expect(response).to have_rendered("application")
        end

        it "shouldn't render home.html.erb" do
            get "home"
            expect(response).not_to have_rendered("home")
        end
    end

end
