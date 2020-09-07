class GlobalSummary
  include HTTParty
  base_uri 'https://covid19.mathdro.id/api'

  def initialize
    @options = {}
  end

  def general
    self.class.get("/", @options)
  end
  def confirmed
    self.class.get("/confirmed", @options)
  end
  def recovered
    self.class.get("/recovered", @options)
  end
  def deaths
    self.class.get("/deaths", @options)
  end

  def daily
    self.class.get("/daily", @options)
  end

  def countries
    self.class.get("/countries", @options)
  end

  private
  def set_global_summary_service
    @summary_service = GlobalSummary.new
  end
 
end

