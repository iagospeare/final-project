#author: Jody
class QuizController < ApplicationController

skip_before_action :verify_authenticity_token  
before_action :authenticate_user!

def index
  render 'new.html.erb'

end
def new
  @quiz = Quiz.new

end
def create


  @quiz = Quiz.create(quiz_params)
  @factor = (0.05) #baseline factor
  @intensity = 1
  @intensity = (@intensity * (1 + @factor * @quiz.fun))
  @intensity = (@intensity * (1+@factor * @quiz.goal))
  @intensity = (@intensity * (1+@factor * @quiz.experience))
  @intensity = (@intensity * (1+@factor * @quiz.favorite))
  @intensity = (@intensity * (1+@factor * @quiz.lose * 2))
  @intensity = (@intensity * (1+@factor * @quiz.average))
  @intensity = (@intensity * (1+@factor * @quiz.goal))
  @intensity = (@intensity * (1+@factor * @quiz.achieve))
  @intensity = (@intensity * (1+@factor * @quiz.longest))


  @intensity = (@intensity * 0.5) if (@quiz.weight > 300) #don't die

  @quiz.update(intensity: @intensity)
  flash[:notice] = "Your intensity factor is #{@quiz.intensity}"
  redirect_to calendars_path

end
private
  def quiz_params
    params.require(:quiz).permit(:weight, :feet, :inches, :intensity, :goal, :experience,
    :achieve, :lose, :fun, :longest, :average, :favorite, :section)
  end
end