class MealsController < ApplicationController
  respond_to :html

  def index
    @meals = current_user.meals.all
    respond_with(@meals)
  end

  def show
    @meal = Meal.find(params[:id])
    respond_with(@meal)
  end

  def new
    @meal = Meal.new
    respond_with(@meal)
  end

  def edit
    @meal = current_user.meals.find(params[:id])
  end

  def create
    @meal = current_user.meals.build(meal_params)

    if @meal.save
      respond_with(@meal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @meal = current_user.meals.find(params[:id])

    if @meal.update(meal_params)
      respond_with(@meal)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @meal = current_user.meals.find(params[:id])

    @meal.destroy
    redirect_to root_path
  end

  private

  def meal_params
    params.require(:meal).permit(
      :name,
      :heat_rating,
      :cuisine_type,
      :recency_weight
    )
  end
end
