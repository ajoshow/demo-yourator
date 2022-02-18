class Admin::AdminController < ApplicationController
  LOGIN_COMPANY_ID = 1

  def index
    cookies[:current_company_id] = LOGIN_COMPANY_ID unless cookies[:current_company_id].present?
    @jobs = Job.where(company_id: cookies[:current_company_id])
    render :template => "admin/index"
  end

  def login
    unless Company.find_by(id: params[:id]).present?
      raise ActiveRecord::RecordNotFound.new('Not Found')
    end
    cookies[:current_company_id] = params[:id]
    redirect_to :action => "index"
  end
end