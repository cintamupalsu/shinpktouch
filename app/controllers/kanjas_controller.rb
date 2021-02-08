class KanjasController < ApplicationController
  def new
    @kanja = Kanja.new
  end
  
  def index
  end
  
  def show
    @kanja = Kanja.find(params[:id])
  end
  
  def create
    @kanja = Kanja.new(user_params)
    if @kanja.save
      flash[:success] = "患者を登録しました。"
      redirect_to @kanja
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  private
    def user_params
      params.require(:kanja).permit(:name, :email, :barcode, :address)
    end
end
