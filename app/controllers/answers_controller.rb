class AnswersController < ApplicationController

  def index
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    # @answer.question_id = current_question.id
    @answer.user_id = current_user.id ## not sure if this is good/necessary
    if @answer.save
      redirect_to answer_path(@answer.id), notice: "Answer submitted!"
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
    params.require(:answer).permit(:caption, :user_id, :question_id, :pic)
  end

end
