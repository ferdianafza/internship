class ReportsController < ApplicationController
    before_action :authenticate_student!, except: [:show]

    before_action :set_report, only: [:show, :edit, :update]

  def index
    @reports = current_student.reports
  end

  def new
    student_signed_in?
    @report = current_student.reports.new
  end

  def create
    @report = current_student.reports.new(report_params)

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:subject, :content, :document)
    end

end
