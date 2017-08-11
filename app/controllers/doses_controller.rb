class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    if @dose.save
      redirect_to @dose.cocktail, notice: ‘Dose was successfully created.’
    else
      redirect_to @dose.cocktail, notice: ‘Dose was successfully created.’
    end
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

end
