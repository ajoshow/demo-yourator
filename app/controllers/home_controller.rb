class HomeController < ApplicationController
  def index
    @companies = Company.where(active: true)
    @jobs = Job.where(open: true)
  end
end
