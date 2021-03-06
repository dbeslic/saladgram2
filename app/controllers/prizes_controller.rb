class PrizesController < ApplicationController
  def index
    @prizes = Prize.all
  end

  def show
    @prize = Prize.find(params[:id])
  end

  def new
    @prize = Prize.new
  end

  def create
    @prize = Prize.new

    @prize.prize_name = params[:prize_name]

    @prize.pic_url = params[:pic_url]

    @prize.sponsor_name = params[:sponsor_name]

    @prize.chat_id = params[:chat_id]



    if @prize.save
      redirect_to "/prizes", :notice => "Prize created successfully."
    else
      render 'new'
    end

  end

  def edit
    @prize = Prize.find(params[:id])
  end

  def update
    @prize = Prize.find(params[:id])


    @prize.prize_name = params[:prize_name]

    @prize.pic_url = params[:pic_url]

    @prize.sponsor_name = params[:sponsor_name]

    @prize.chat_id = params[:chat_id]



    if @prize.save
      redirect_to "/prizes", :notice => "Prize updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @prize = Prize.find(params[:id])

    @prize.destroy


    redirect_to "/prizes", :notice => "Prize deleted."

  end
end
