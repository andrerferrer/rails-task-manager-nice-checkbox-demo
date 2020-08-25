Rails.application.routes.draw do
  resources :tasks, only: %i[ index show new create destroy ]

  patch 'tasks/:id/complete', to: 'tasks#complete', as: :complete_task
end
