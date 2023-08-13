class QuizController < ApplicationController
  before_action :set_questions, only: [:question, :answer]

  def top
    session[:score] = 0
  end

  def question
    @question = @questions[params[:id].to_i - 1]
    @question_number = params[:id].to_i
  end
  
  def answer
    question_number = params[:question_number].to_i
    correct_answer = @questions[question_number - 1][:correct]

    session[:score] += 1 if correct_answer == params[:answer]
    
    if question_number < @questions.length
      redirect_to question_path(question_number + 1)
    else
      redirect_to quiz_result_path
    end
  end
  
  def result
    @score = session[:score]
  end

  private

  def set_questions
    @questions = [
      { text: "ゴリラはストレスが蓄積しやすい。\nそのため、繊細な生き物である。", correct: "Yes" },
      { text: "ニシローランドゴリラの学名は「Gorilla gorilla gorilla」である。\nでは、マウンテンゴリラの学名は「Gorilla」である。", correct: "No" },
      { text: "ゴリラの握力は推定《200~300kg》である。", correct: "No" },
      { text: "紙幣にマウンテンゴリラが描かれている国は、「ルワンダ」である。", correct: "Yes" },
      { text: "ゴリラの性格は《攻撃的》である。", correct: "No" },
      { text: "ゴリラを漢字で書くと「黒猩猩」である。", correct: "No" },
      { text: "誰しも憧れる伝説の存在プリキュア。\n実は一度だけ「キュアゴリラ」が登場したことがある。", correct: "Yes" },
      { text: "ゴリラは好きですか？", correct: "Yes" },
    ]
  end
end
