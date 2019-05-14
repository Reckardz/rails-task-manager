Rails.application.routes.draw do
  get '/', to: 'tasks_controller#index', as: :index
end
