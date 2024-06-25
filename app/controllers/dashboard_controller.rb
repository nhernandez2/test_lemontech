class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @events = current_user.events.group_by_month(:date, format: "%b %Y").count
    @lastEvents = current_user.events.order(date: :asc).limit(5)
    print(@lastEvents)
  end
end
