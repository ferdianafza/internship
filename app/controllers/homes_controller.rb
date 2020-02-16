class HomesController < ApplicationController
  require 'active_support/core_ext'
    before_action :authenticate_student!

    def index
       @student_last_presences_checkin = current_student.presences.last.checkin.to_date
      # @student_last_presences_checkout = current_student.presences.last.checkout.to_date
      @presence = current_student.presences.new
      @presence_to_update = current_student.presences.last
    end

    def new
      @presence = current_student.presences.new
    end

    def myprofile
    end

    def update
      respond_to do |format|
        if @presence_to_update.update(presence_checkout)
          format.html { redirect_to @presence, notice: 'Checkout was successfully updated.' }
          format.json { render :show, status: :ok, location: @presence }
        else
          format.html { render :edit }
          format.json { render json: @presence.errors, status: :unprocessable_entity }
        end
      end
    end

    def create
      # student_last_presences_checkin = current_student.presences.last.checkin.to_date
      # if student_last_presences_checkin != Date.today ||
      if current_student.presences == [] || current_student.presences.last.checkin.to_date != Date.today
          @presence = current_student.presences.new(presence_params)
          respond_to do |format|
            if @presence.save
              format.html { redirect_to "/", notice: 'Checkin was successfully created.' }
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

    def set_checkout
      @presence_to_update = current_student.presences.last
    end

    def presence_checkout
      params.require(:presence).permit(:checkout)
    end

end
