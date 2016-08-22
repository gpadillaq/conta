class HomesController < ApplicationController
  # GET /homes
  # GET /homes.json
  def index
  end

  # GET /homes/1
  # GET /homes/1.json
  def show
    redirect_to index
  end

  # GET /homes/new
  def new
    redirect_to index
  end

  # GET /homes/1/edit
  def edit
    redirect_to index
  end
end
