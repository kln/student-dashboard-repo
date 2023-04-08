class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: {
      name: 'Kelvin Morais 2'
    }
  end
end