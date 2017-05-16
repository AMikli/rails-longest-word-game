require_relative '../services/gaming_controller_services'

class GamingController < ApplicationController
  def game
    @grid = generate_grid(12)
    @start_time = Time.now
  end

  def score
    @end_time = Time.now
    @start_time = Time.parse(params[:start_time])
    @grid = params[:grid]
    @attempt = params[:guess]
    @result = run_game(@attempt, @grid, @start_time, @end_time)
  end
end
