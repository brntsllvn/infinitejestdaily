class QuotesController < ApplicationController  
  http_basic_authenticate_with name: Figaro.env.un, password: Figaro.env.pw, except: [:index, :vote]
  before_action :set_quote, only: [:vote, :edit, :update, :destroy]

  def index
    @quote = Quote.order('RANDOM()').first
  end

  def new
    @quote = Quote.new
  end

  def edit
  end

  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      redirect_to root_path,  notice: "Added: #{@quote.quote}"
    else
      render :new, alert: 'Whoops'
    end
  end

  def update
    if @quote.update(quote_params)
      redirect_to @quote, notice: 'Updated'
    else
      render :edit
    end
  end

  def destroy
    @quote.destroy
    redirect_to root_path, notice: 'Quote destroyed'
  end

  private

  def set_quote
    @quote = Quote.find(params[:id])
  end


  def quote_params
    params.require(:quote).permit!
  end
end
