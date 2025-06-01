class SchedulesController < ApplicationController
  before_action :authenticate_user!

  def index
    @schedules = Schedule.order(date: :asc, time: :asc) 
  end
end
