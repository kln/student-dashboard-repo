class StudentsController < ApplicationController
  # before_action :authenticate_user!

  def index
    render json: {
      name: 'Kelvin Morais'
    }
  end
end