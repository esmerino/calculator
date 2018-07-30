require 'rails_helper'

RSpec.describe CalculatorsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}, format: :json
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Calculator" do
        expect {
          post :create, params: { calculator: { algorithim: "1+2=" } }, format: :json
        }.to change(Calculator, :count).by(1)
      end

      it "renders a JSON response with the new calculator" do

        post :create, params: { calculator: { algorithim: "1+2=" } }, format: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(calculator_url(Calculator.last))
      end
    end
  end
end