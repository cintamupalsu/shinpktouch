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
    @kanja = Kanja.new(kanja_params)
    if @kanja.save
      flash[:success] = "患者を登録しました。"
      redirect_to @kanja
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def search
    @kanja = Kanja.find_by(search_params['barcode'])
    if @kanja != nil
      redirect_to @kanja
    else
      flash[:danger] = "患者プロファイルが見つけられませんでした"
    end
  end
  
  private
    def kanja_params
      params.require(:kanja).permit(:name, :email, :barcode, :address)
    end
  
    def search_params
      params.require(:kanjasearch).permit(:barcode)
    end
end
