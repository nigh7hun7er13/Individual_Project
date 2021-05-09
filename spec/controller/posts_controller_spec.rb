#this file might be a duplicate/unnecessary
require 'rails_helper'

RSpec.describe PostsController, type: :controller do

    # Add this
    login_user

    let(:valid_attributes) {
        { :title => "Test title!", :description => "This is a test description"}
    }

    let(:valid_session) { {} }

    describe "GET #index" do
        it "returns a success response" do
            Post.create! valid_attributes
            get :index, params: {}, session: valid_session

            # Make sure to swap this as well
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            #expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        end
    end
end