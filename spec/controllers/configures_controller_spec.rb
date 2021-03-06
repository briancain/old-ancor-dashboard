require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ConfiguresController do

  # This should return the minimal set of attributes required to create a valid
  # Configure. As you add validations to Configure, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ConfiguresController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  # describe "GET index" do
  #   it "assigns all configures as @configures" do
  #     configure = Configure.create! valid_attributes
  #     get :index, {}, valid_session
  #     assigns(:configures).should eq([configure])
  #   end
  # end

  describe "GET show" do
    it "assigns the requested configure as @configure" do
      configure = Configure.create! valid_attributes
      get :show, {:id => configure.to_param}, valid_session
      assigns(:configure).should eq(configure)
    end
  end

  describe "GET new" do
    it "assigns a new configure as @configure" do
      get :new, {}, valid_session
      assigns(:configure).should be_a_new(Configure)
    end
  end

  describe "GET edit" do
    it "assigns the requested configure as @configure" do
      configure = Configure.create! valid_attributes
      get :edit, {:id => configure.to_param}, valid_session
      assigns(:configure).should eq(configure)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Configure" do
        expect {
          post :create, {:configure => valid_attributes}, valid_session
        }.to change(Configure, :count).by(1)
      end

      it "assigns a newly created configure as @configure" do
        post :create, {:configure => valid_attributes}, valid_session
        assigns(:configure).should be_a(Configure)
        assigns(:configure).should be_persisted
      end

      it "redirects to the created configure" do
        post :create, {:configure => valid_attributes}, valid_session
        response.should redirect_to(Configure.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved configure as @configure" do
        # Trigger the behavior that occurs when invalid params are submitted
        Configure.any_instance.stub(:save).and_return(false)
        post :create, {:configure => { "name" => "invalid value" }}, valid_session
        assigns(:configure).should be_a_new(Configure)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Configure.any_instance.stub(:save).and_return(false)
        post :create, {:configure => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested configure" do
        configure = Configure.create! valid_attributes
        # Assuming there are no other configures in the database, this
        # specifies that the Configure created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Configure.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => configure.to_param, :configure => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested configure as @configure" do
        configure = Configure.create! valid_attributes
        put :update, {:id => configure.to_param, :configure => valid_attributes}, valid_session
        assigns(:configure).should eq(configure)
      end

      it "redirects to the configure" do
        configure = Configure.create! valid_attributes
        put :update, {:id => configure.to_param, :configure => valid_attributes}, valid_session
        response.should redirect_to(configure)
      end
    end

    describe "with invalid params" do
      it "assigns the configure as @configure" do
        configure = Configure.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Configure.any_instance.stub(:save).and_return(false)
        put :update, {:id => configure.to_param, :configure => { "name" => "invalid value" }}, valid_session
        assigns(:configure).should eq(configure)
      end

      it "re-renders the 'edit' template" do
        configure = Configure.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Configure.any_instance.stub(:save).and_return(false)
        put :update, {:id => configure.to_param, :configure => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested configure" do
      configure = Configure.create! valid_attributes
      expect {
        delete :destroy, {:id => configure.to_param}, valid_session
      }.to change(Configure, :count).by(-1)
    end

    it "redirects to the configures list" do
      configure = Configure.create! valid_attributes
      delete :destroy, {:id => configure.to_param}, valid_session
      response.should redirect_to(configures_url)
    end
  end

end
