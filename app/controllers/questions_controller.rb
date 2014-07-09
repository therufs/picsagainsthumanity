class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    if @question.save
      redirect_to question_path(@question.id), notice: "Question submitted!"
    else
      render 'new'
    end
  end

  def show
    ans = Answer.find_by_id(params[:id])
    q_id = ans.question_id
    @question = Question.find_by(id: q_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def question_params
      params.require(:question).permit(:text, :user_id)
    end
end
