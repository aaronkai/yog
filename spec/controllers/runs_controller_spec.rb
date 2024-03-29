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

describe RunsController do

  # This should return the minimal set of attributes required to create a valid
  # Run. As you add validations to Run, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "date" => "2012-12-30" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RunsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all runs as @runs" do
      run = Run.create! valid_attributes
      get :index, {}, valid_session
      assigns(:runs).should eq([run])
    end
  end

  describe "GET show" do
    it "assigns the requested run as @run" do
      run = Run.create! valid_attributes
      get :show, {:id => run.to_param}, valid_session
      assigns(:run).should eq(run)
    end
  end

  describe "GET new" do
    it "assigns a new run as @run" do
      get :new, {}, valid_session
      assigns(:run).should be_a_new(Run)
    end
  end

  describe "GET edit" do
    it "assigns the requested run as @run" do
      run = Run.create! valid_attributes
      get :edit, {:id => run.to_param}, valid_session
      assigns(:run).should eq(run)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Run" do
        expect {
          post :create, {:run => valid_attributes}, valid_session
        }.to change(Run, :count).by(1)
      end

      it "assigns a newly created run as @run" do
        post :create, {:run => valid_attributes}, valid_session
        assigns(:run).should be_a(Run)
        assigns(:run).should be_persisted
      end

      it "redirects to the created run" do
        post :create, {:run => valid_attributes}, valid_session
        response.should redirect_to(Run.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved run as @run" do
        # Trigger the behavior that occurs when invalid params are submitted
        Run.any_instance.stub(:save).and_return(false)
        post :create, {:run => { "date" => "invalid value" }}, valid_session
        assigns(:run).should be_a_new(Run)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Run.any_instance.stub(:save).and_return(false)
        post :create, {:run => { "date" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested run" do
        run = Run.create! valid_attributes
        # Assuming there are no other runs in the database, this
        # specifies that the Run created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Run.any_instance.should_receive(:update_attributes).with({ "date" => "2012-12-30" })
        put :update, {:id => run.to_param, :run => { "date" => "2012-12-30" }}, valid_session
      end

      it "assigns the requested run as @run" do
        run = Run.create! valid_attributes
        put :update, {:id => run.to_param, :run => valid_attributes}, valid_session
        assigns(:run).should eq(run)
      end

      it "redirects to the run" do
        run = Run.create! valid_attributes
        put :update, {:id => run.to_param, :run => valid_attributes}, valid_session
        response.should redirect_to(run)
      end
    end

    describe "with invalid params" do
      it "assigns the run as @run" do
        run = Run.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Run.any_instance.stub(:save).and_return(false)
        put :update, {:id => run.to_param, :run => { "date" => "invalid value" }}, valid_session
        assigns(:run).should eq(run)
      end

      it "re-renders the 'edit' template" do
        run = Run.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Run.any_instance.stub(:save).and_return(false)
        put :update, {:id => run.to_param, :run => { "date" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested run" do
      run = Run.create! valid_attributes
      expect {
        delete :destroy, {:id => run.to_param}, valid_session
      }.to change(Run, :count).by(-1)
    end

    it "redirects to the runs list" do
      run = Run.create! valid_attributes
      delete :destroy, {:id => run.to_param}, valid_session
      response.should redirect_to(runs_url)
    end
  end

end
