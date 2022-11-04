# frozen_string_literal: true

Rails.application.routes.draw do
  resources :friends do
    collection do
      get :school
      get :work
      get :holiday
    end
  end

  root "friends#index"

end
