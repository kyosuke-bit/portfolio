class ReservesController < ApplicationController
  def index
    @reserve = Reserve.all
  end

  def new
  end

  def create
  end
end
