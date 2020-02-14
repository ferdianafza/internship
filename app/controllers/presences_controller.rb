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
    @presence = current_student.presences.new(presence_params)
    @last = @presence
     # @before_create = current_student.presences.last
     # @before_checkin = @before_create.checkin.to_date
    respond_to do |format|
         if @last.checkin.to_date != Date.today
            if @presence.save
              format.html { redirect_to @presence, notice: 'Checkin was successfully created.' }
              format.json { render :show, status: :created, location: @presence }
            else
              format.html { render :new }
              format.json { render json: @presence.errors, status: :unprocessable_entity }
            end
         elsif @last.checkin.to_date == Date.today
            format.html { redirect_to @presence, notice: 'Anda Sudah Checkin Hari ini.' }
      end
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
