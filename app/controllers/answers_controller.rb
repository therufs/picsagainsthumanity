class AnswersController < ApplicationController

  def index
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id ## not sure if this is good/necessary
    @answer.question_id = params[:question_id]
    if @answer.save
      redirect_to question_path(params[:question_id]), notice: "Answer submitted!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def destroy
  end

  private

  def answer_params
    params.require(:question_answer).permit(:caption, :user_id, :question_id, :pic)
  end

end
