class PresencesController < ApplicationController
    before_action :authenticate_student!, except: [:show]
    before_action :set_presence, only: [:show, :edit, :update]

    def index
      @presences = current_student.presences
    end

    def new
      student_signed_in?
      @presence = current_student.presences.new
    end

    def edit
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

    respond_to do |format|
      if @presence.save
        format.html { redirect_to @presence, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @presence }
      else
        format.html { render :new }
        format.json { render json: @presence.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    def set_presence
      @presence = Presence.find(params[:id])
    end

    def presence_params
      params.require(:presence).permit(:checkin, :checkout)
    end

    def presence_checkout
      params.require(:presence).permit(:checkout)
    end

end
