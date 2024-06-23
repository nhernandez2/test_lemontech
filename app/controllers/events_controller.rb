class EventsController < ApplicationController
  before_action :authenticate_user!

  # GET /events or /events.json
  def index
    @events = Event.where(:user_id => current_user.id)
  end

  # GET /events/1 or /events/1.json
  def show
    @event = Event.find(params[:id])

  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id

    respond_to do |format|
      if @event.save
        format.html { redirect_to event_url(@event), notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    @event = Event.find(params[:id])
      respond_to do |format|
        if @event.user_id == current_user.id
          if @event.update(event_params)
            format.html { redirect_to event_url(@event), notice: "Event was successfully updated." }
            format.json { render :show, status: :ok, location: @event }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @event.errors, status: :unprocessable_entity }
          end
        else
          format.html { redirect_to destroy_user_session_path, notice: "No puedes editar este evento" }
        end
      end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event = Event.find(params[:id])
      @event.destroy!
      respond_to do |format|
        if @event.user_id == current_user.id
          @event.destroy!
          format.html { redirect_to events_url, notice: "Event was successfully destroyed." }
          format.json { head :no_content }
        else
          format.html { redirect_to destroy_user_session_path, notice: "No puedes editar este evento" }
        end
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:name, :description, :date, :location, :capacity)
    end
end
