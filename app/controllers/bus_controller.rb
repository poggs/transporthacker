class BusController < ApplicationController

  before_filter :setup_countdown_poller

  def index
    @result = @countdown_poller.get_predictions_for(params[:stop_id]) if params[:stop_id]
  end

  private

  def setup_countdown_poller
    @countdown_poller = TransportHacker::Tfl::Countdown.new unless @countdown_poller
  end

end
