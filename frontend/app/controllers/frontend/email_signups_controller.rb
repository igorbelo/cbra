require_dependency "frontend/application_controller"

module Frontend
  class EmailSignupsController < ApplicationController
    before_action :set_email_signup, only: [:show, :edit, :update, :destroy]

    # GET /email_signups
    def index
      @email_signups = Core::MailSubscription::Signup.all
    end

    # GET /email_signups/1
    def show
    end

    # GET /email_signups/new
    def new
      @email_signup = EmailSignup.new
    end

    # GET /email_signups/1/edit
    def edit
    end

    # POST /email_signups
    def create
      @email_signup = EmailSignup.new(email_signup_params)

      if @email_signup.save
        redirect_to @email_signup, notice: 'Email signup was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /email_signups/1
    def update
      if @email_signup.update(email_signup_params)
        redirect_to @email_signup, notice: 'Email signup was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /email_signups/1
    def destroy
      @email_signup.destroy
      redirect_to email_signups_url, notice: 'Email signup was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_email_signup
        @email_signup = EmailSignup.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def email_signup_params
        params[:email_signup]
      end
  end
end
