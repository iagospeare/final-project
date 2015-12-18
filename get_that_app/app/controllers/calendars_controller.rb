class CalendarsController < ApplicationController
  require 'date'
  
  before_action :authenticate_user!
  
  
  
  
  
  # GET /personal_exercises
  # GET /personal_exercises.json
  def index
    @exercises = Workout.all
    
    
    @exercises.each_with_index do |x, index| 
      x.start_time = Date.today+(index*2)
    end
    
  end

 
  
  #private
    # Use callbacks to share common setup or constraints between actions.
   # def set_personal_exercise
    #  @personal_exercise = PersonalExercise.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def personal_exercise_params
     # params.require(:personal_exercise).permit(:name, :start_time)
    #end
    
end
