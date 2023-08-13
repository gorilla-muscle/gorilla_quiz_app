questions = [
  { content: '問題1の内容', answer: true },
  { content: '問題2の内容', answer: false },
  { content: '問題2の内容', answer: false },
  { content: '問題2の内容', answer: false },
  { content: '問題2の内容', answer: false },
  { content: '問題2の内容', answer: false },
  { content: '問題2の内容', answer: false },
  { content: '問題2の内容', answer: false },
  { content: '問題2の内容', answer: false },
  { content: '問題2の内容', answer: false },
]

questions.each do |question|
  Question.create!(question)
end
