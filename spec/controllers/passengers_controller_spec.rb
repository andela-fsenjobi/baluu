require "rails_helper"

RSpec.describe PassengersController, type: :controller do
  let(:valid_attributes) do
    skip("Add a hash of attributes valid for your model")
  end

  let(:invalid_attributes) do
    skip("Add a hash of attributes invalid for your model")
  end

  let(:valid_session) { {} }

  describe 'GET #index' do
    it "assigns all passengers as @passengers" do
      passenger = Passenger.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:passengers)).to eq([passenger])
    end
  end

  describe 'GET #show' do
    it "assigns the requested passenger as @passenger" do
      passenger = Passenger.create! valid_attributes
      get :show, { id: passenger.to_param }, valid_session
      expect(assigns(:passenger)).to eq(passenger)
    end
  end

  describe 'GET #new' do
    it "assigns a new passenger as @passenger" do
      get :new, {}, valid_session
      expect(assigns(:passenger)).to be_a_new(Passenger)
    end
  end

  describe 'GET #edit' do
    it "assigns the requested passenger as @passenger" do
      passenger = Passenger.create! valid_attributes
      get :edit, { id: passenger.to_param }, valid_session
      expect(assigns(:passenger)).to eq(passenger)
    end
  end

  describe 'POST #create' do
    context "with valid params" do
      it "creates a new Passenger" do
        expect do
          post :create, { passenger: valid_attributes }, valid_session
        end.to change(Passenger, :count).by(1)
      end

      it "assigns a newly created passenger as @passenger" do
        post :create, { passenger: valid_attributes }, valid_session
        expect(assigns(:passenger)).to be_a(Passenger)
        expect(assigns(:passenger)).to be_persisted
      end

      it "redirects to the created passenger" do
        post :create, { passenger: valid_attributes }, valid_session
        expect(response).to redirect_to(Passenger.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved passenger as @passenger" do
        post :create, { passenger: invalid_attributes }, valid_session
        expect(assigns(:passenger)).to be_a_new(Passenger)
      end

      it "re-renders the 'new' template" do
        post :create, { passenger: invalid_attributes }, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe 'PUT #update' do
    context "with valid params" do
      let(:new_attributes) do
        skip("Add a hash of attributes valid for your model")
      end

      it "updates the requested passenger" do
        passenger = Passenger.create! valid_attributes
        put :update, { id: passenger.to_param, passenger: new_attributes }, valid_session
        passenger.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested passenger as @passenger" do
        passenger = Passenger.create! valid_attributes
        put :update, { id: passenger.to_param, passenger: valid_attributes }, valid_session
        expect(assigns(:passenger)).to eq(passenger)
      end

      it "redirects to the passenger" do
        passenger = Passenger.create! valid_attributes
        put :update, { id: passenger.to_param, passenger: valid_attributes }, valid_session
        expect(response).to redirect_to(passenger)
      end
    end

    context "with invalid params" do
      it "assigns the passenger as @passenger" do
        passenger = Passenger.create! valid_attributes
        put :update, { id: passenger.to_param, passenger: invalid_attributes }, valid_session
        expect(assigns(:passenger)).to eq(passenger)
      end

      it "re-renders the 'edit' template" do
        passenger = Passenger.create! valid_attributes
        put :update, { id: passenger.to_param, passenger: invalid_attributes }, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe 'DELETE #destroy' do
    it "destroys the requested passenger" do
      passenger = Passenger.create! valid_attributes
      expect do
        delete :destroy, { id: passenger.to_param }, valid_session
      end.to change(Passenger, :count).by(-1)
    end

    it "redirects to the passengers list" do
      passenger = Passenger.create! valid_attributes
      delete :destroy, { id: passenger.to_param }, valid_session
      expect(response).to redirect_to(passengers_url)
    end
  end
end
