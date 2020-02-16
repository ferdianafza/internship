class HomesController < ApplicationController
    before_action :authenticate_student!

    def index
      @student_last_presences_checkin = current_student.presences.last.checkin.to_date
    end

    def new
      @presence = current_student.presences.new
      @presence.build
    end

    def myprofile
    end

    def create
      student_last_presences_checkin = current_student.presences.last.checkin.to_date
      # if student_last_presences_checkin != Date.today ||
      if current_student.presences == [] || student_last_presences_checkin != Date.today
          @presence = current_student.presences.new(presence_params)
          respond_to do |format|
            if @presence.save
              format.html { redirect_to @presence, notice: 'Checkin was successfully created.' }
              format.json { render :show, status: :created, location: @presence }
            else
              format.html { render :new }
              format.json { render json: @presence.errors, status: :unprocessable_entity }
            end
          end
        else
          respond_to do |format|
          format.html { redirect_to "/presences", notice: 'Anda sudah Checkin Hari ini.' }
        end
      end
    end

    private

    def presence_params
      params.require(:presence).permit(:checkin, :checkout)
    end

end
