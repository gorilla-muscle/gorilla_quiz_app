Rails.application.routes.draw do
  root 'quiz#top'

  get 'quiz/question/:id', to: 'quiz#question', as: :question
  post 'quiz/answer', to: 'quiz#answer'
  get 'quiz/result', to: 'quiz#result'
end
