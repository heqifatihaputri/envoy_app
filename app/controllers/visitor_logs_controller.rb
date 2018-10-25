class VisitorLogsController < ApplicationController
  before_action :set_visitor_log, only: [:show, :edit, :update, :destroy, :signed_in, :signed_out]
  before_action :authenticate_user!

  # GET /visitor_logs
  # GET /visitor_logs.json
  def index
    @visitor_logs = if params[:search]
      VisitorLog.search_by_full_name(params[:search])
    elsif params[:date]
      VisitorLog.search_by_date(params[:date])
    else
      VisitorLog.where(created_at: Date.today.all_day)
    end
  end

  # GET /visitor_logs/1
  # GET /visitor_logs/1.json
  def show
  end

  # GET /visitor_logs/new
  def new
    @visitor_log = VisitorLog.new
  end

  # GET /visitor_logs/1/edit
  def edit
  end

  # POST /visitor_logs
  # POST /visitor_logs.json
  def create
    @visitor_log = VisitorLog.new(visitor_log_params)

    respond_to do |format|
      if @visitor_log.save
        format.html { redirect_to @visitor_log, notice: 'Visitor log was successfully created.' }
        format.json { render :show, status: :created, location: @visitor_log }
      else
        format.html { render :new }
        format.json { render json: @visitor_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitor_logs/1
  # PATCH/PUT /visitor_logs/1.json
  def update
    respond_to do |format|
      if @visitor_log.update(visitor_log_params)
        format.html { redirect_to @visitor_log, notice: 'Visitor log was successfully updated.' }
        format.json { render :show, status: :ok, location: @visitor_log }
      else
        format.html { render :edit }
        format.json { render json: @visitor_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitor_logs/1
  # DELETE /visitor_logs/1.json
  def destroy
    @visitor_log.destroy
    respond_to do |format|
      format.html { redirect_to visitor_logs_url, notice: 'Visitor log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def signed_out
   @visitor_log.sign_out
   redirect_to visitor_logs_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitor_log
      id = params[:id].present? ? (params[:id]) : (params[:visitor_log_id])
      @visitor_log = VisitorLog.find(id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visitor_log_params
      params.require(:visitor_log).permit(:location_id, :purpose_of_visit, :your_email_address, :your_full_name, :private_notes, :sign_in_time, :sign_out_time, :nda_pdf_url, :photo_url, :host)
    end
end
