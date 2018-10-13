Rails.application.routes.draw do

#   resources :quizzes
   get 'quizzes' => 'quizzes#index'
   get 'quizzes/new' => 'quizzes#new'
   post 'quizzes' => 'quizzes#create'   
   get 'quizzes/list_all' => 'quizzes#list_all'
   get 'quizzes/:id/edit' => 'quizzes#edit'
   put 'quizzes/:id' => 'quizzes#update'
   delete 'quizzes/:id' => 'quizzes#destroy'

end
