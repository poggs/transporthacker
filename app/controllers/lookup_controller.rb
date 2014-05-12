class LookupController < ApplicationController

  def index

    if params[:q].blank?
      matches = []
    else
      matches = BusStop.where('stop_name LIKE ? OR UPPER(stop_name) LIKE ?', "%#{params[:q].upcase}%", "%#{params[:q].upcase}%").pluck(:stop_code_lbsl, :stop_name).collect { |k,v| { 'value' => k, 'tokens' => v, 'descr' => v } }
    end

    respond_to do |format|
      format.json { render :json => matches }
    end

  end

end
