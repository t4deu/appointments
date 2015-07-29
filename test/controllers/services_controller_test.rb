require "test_helper"

describe ServicesController do
  let(:service) { services :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    value(assigns(:services)).wont_be :nil?
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates service" do
    expect {
      post :create, service: { description: service.description, duration: service.duration, name: service.name, price: service.price, venue_id: service.venue_id }
    }.must_change "Service.count"

    must_redirect_to service_path(assigns(:service))
  end

  it "shows service" do
    get :show, id: service
    value(response).must_be :success?
  end

  it "gets edit" do
    get :edit, id: service
    value(response).must_be :success?
  end

  it "updates service" do
    put :update, id: service, service: { description: service.description, duration: service.duration, name: service.name, price: service.price, venue_id: service.venue_id }
    must_redirect_to service_path(assigns(:service))
  end

  it "destroys service" do
    expect {
      delete :destroy, id: service
    }.must_change "Service.count", -1

    must_redirect_to services_path
  end
end
