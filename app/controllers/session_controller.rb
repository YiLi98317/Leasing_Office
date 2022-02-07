class SessionController < ApplicationController
  #skip_before_action :authorized, only: [:new, :create]
  def new
  end

  def create
    if params[:type] == "agent"
      agent = Agent.find_by_email(params[:email])
      if agent && agent.authenticate(params[:password])
        session[:id] = agent.id
        session[:type] = "agent"
        redirect_to root_url
      else
        flash.now[:alert] = "Email or password is invalid"
        render "new"
      end
    elsif params[:type] == "applicant"
      applicant = Applicant.find_by_email(params[:email])
      if applicant && applicant.authenticate(params[:password])
        session[:id] = applicant.id
        session[:type] = "applicant"
        redirect_to root_url
      else
        flash.now[:alert] = "Email or password is invalid"
        render "new"
      end
    elsif params[:type] == "admin"
      admin = Admin.find_by_email(params[:email])
      if admin && admin.authenticate(params[:password])
        session[:id] = admin.id
        session[:type] = "admin"
        redirect_to root_url
      else
        flash.now[:alert] = "Email or password is invalid"
        render "new"
      end
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_url
  end
end
