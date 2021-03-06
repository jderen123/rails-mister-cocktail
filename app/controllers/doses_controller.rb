class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
  def create
    @dose = Dose.new(doses_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end
  def destroy
    @dose = Dose.find(params[:id])
    if @dose.destroy
      redirect_to cocktail_path(@dose.cocktail), notice: 'Ingredient Destroyed Successfully'
    else
      redirect_to cocktail_path(@dose.cocktail), alert: 'Could not delete the ingredient'
    end
  end



private
  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
end

end
