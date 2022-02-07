class ApplicationController < ActionController::Base
  helper_method :current_agent, :current_applicant, :current_admin
  helper_method :agent_logged_in?, :applicant_logged_in?, :admin_logged_in?
  #before_action :authorized

  def current_agent
    if session[:id] and session[:type] == "agent"
      @current_agent ||= Agent.find(session[:id])
    else
      @current_agent = nil
    end
  end

  def current_applicant
    if session[:id] and session[:type] == "applicant"
      @current_applicant ||= Applicant.find(session[:id])
    else
      @current_applicant = nil
    end
  end

  def current_admin
    if session[:id] and session[:type] == "admin"
      @current_admin ||= Admin.find(session[:id])
    else
      @current_admin = nil
    end
  end

  def agent_logged_in?
    !current_agent.nil?
  end

  def applicant_logged_in?
    !current_applicant.nil?
  end

  def admin_logged_in?
    !current_admin.nil?
  end

  def authorized
    redirect_to root_path unless agent_logged_in? or applicant_logged_in? or admin_logged_in?
  end
end
