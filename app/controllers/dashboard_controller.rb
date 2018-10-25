class DashboardController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
  end

  def global_admin_dash
  end
end