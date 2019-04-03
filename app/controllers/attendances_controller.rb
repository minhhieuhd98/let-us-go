class AttendancesController < ApplicationController

    before_action :find_event
    before_action :find_attendance, only: [:destroy, :edit, :update]
    after_action :verify_authorized, only: [:edit, :update, :destroy]
  
  
    def new
      @attendance = @event.attendances.build
    end
  
    def create
      @attendances = Attendance.where(event_id: @event).order("created_at DESC")
      @attendance = @event.attendances.new(params[:attendance].permit(:accompanied_number))
      @attendance.user_id = current_user.id
  
  
      respond_to do |format|
        if @attendance.save
          format.js
          format.html { redirect_to event_path @attendance.event, notice: 'Attendance was successfully created.' }
  
          format.json { render :show, status: :created, location: [@event] }
        else
          format.html { render "events/show" }
          format.json { render json: @attendance.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def edit
      authorize @attendance
      respond_to do |format|
        format.js
      end
    end
  
    def update
      authorize @attendance
      @attendances = Attendance.where(event_id: @event).order("created_at DESC")
      respond_to do |format|
      if @attendance.update(params[:attendance].permit(:accompanied_number))
        format.js
      else
        format.js
      end
      end
    end
  
    def destroy
      authorize @attendance
      @attendances = Attendance.where(event_id: @event).order("created_at DESC")
      @attendance.destroy
      respond_to do |format|
        format.html { redirect_to event_path(@event), notice: 'Attendances was successfully destroyed.' }
        format.js
      end
    end
  
  
    private
    def find_event
      @event = Event.find(params[:event_id])
    end
  
    def find_attendance
      @attendance = @event.attendances.find(params[:id])
    end  
end
