class PresencesController < ApplicationController
    before_action :authenticate_student!, except: [:show]
    before_action :set_checkout, only: [:show, :checkout, :update]
    before_action :set_student, only: [:index, :new, :show]

    def index
      @presences = current_student.presences
    end

    def new
      student_signed_in?
      @presence = current_student.presences.new
    end

    def edit
    end

    def checkout
    end

    def update
      respond_to do |format|
        if @presence.update(presence_checkout)
          format.html { redirect_to @presence, notice: 'presence was successfully updated.' }
          format.json { render :show, status: :ok, location: @presence }
        else
          format.html { render :edit }
          format.json { render json: @presence.errors, status: :unprocessable_entity }
        end
      end
    end

    def create
    @student_last_presences = current_student.presences.last.checkin.to_date
    if @student_last_presences != Date.today
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
        format.html { redirect_to @presence, notice: 'Anda sudah Checkin Hari ini.' }
      end
  end


  private

    def set_student
      @student = current_student
    end

    def set_presence
      @presence = Presence.find(params[:id])
    end

    def presence_params
      params.require(:presence).permit(:checkin, :checkout)
    end

    def set_checkout
       @presence = current_student.presences.last
    end

    def presence_checkout
      params.require(:presence).permit(:checkout)
    end

end
