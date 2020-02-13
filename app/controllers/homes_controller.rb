class HomesController < ApplicationController

   before_action :authenticate_student!

    def index
      @presences = current_student.presences
      @reports = current_student.reports
      @student = current_student
    end

end
