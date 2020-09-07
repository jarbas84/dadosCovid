class HomeController < ApplicationController
  before_action :set_global_summary_service
  def index
  	@summary = @summary_service.general
  end

  def confirmed
  	@confirmed = @summary_service.confirmed
  end

  def recovered
  	@recovered = @summary_service.recovered
  end

  def deaths
  	@deaths = @summary_service.deaths
  end

  def daily
    @daily = @summary_service.daily
  end
  def countries
    @countries = @summary_service.countries
  end

  def set_global_summary_service
  	@summary_service = GlobalSummary.new
  end
end
