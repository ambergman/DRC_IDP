class StaticPagesController < ApplicationController

  def process_data
    render :process_data
  end
  
  def read_csv
    @csv, @filename = params[:file], params[:filename]
    process_csv!
    
    redirect_to root_url, notice: "CSV Imported"
  end
  
end
