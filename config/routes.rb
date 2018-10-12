Rails.application.routes.draw do
    
  get 'quiz' => 'quiz#index'
  get 'quiz/new' => 'quiz#new'

end
