class HomesController < ApplicationController

    before_action :authenticate_student!

    def index
      @student_last_presences_checkin = current_student.presences.last.checkin.to_date
    end

    def new
      @presence = current_student.presences.new
    end

    def myprofile

    end

    private

    def presence_params
      params.require(:presence).permit(:checkin, :checkout)
    end

end
