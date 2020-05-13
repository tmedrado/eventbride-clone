class ParticipationsController < ApplicationController
  def new
    @participation = Participation.new
  end

  def create
    @participation = Participation.new(participation_params)
    user_id = current_user.id
    event_id = @event.id
  end

  private
  def participation_params
    params.require(:participation).permit(:user_id, :event_id)
  end

end
