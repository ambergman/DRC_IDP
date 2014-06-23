class StaticPagesController < ApplicationController
  include DataProcessing

  def process_data
    @idps = TestIdp.all
    @reconciled_matches = ReconciledMatch.all
    @unreconciled_matches = UnreconciledMatch.all
    render :process_data
  end
  
  def read_csv
    @csv, @filename = params[:file], params[:filename]
    process_csv!
    
    redirect_to root_url, notice: "CSV Imported"
  end
  
end
