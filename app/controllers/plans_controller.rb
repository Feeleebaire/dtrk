class PlansController < ApplicationController
  before_action :set_user, only: [:index, :create, :update, :destroy]
  def index
    @plans = @user.plans
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user = @user
      if @plan.save
        redirect_to plans_path
      else
        render :new
      end
  end

  private

  def set_user
    @user = current_user
  end

  def plan_params
    params.require(:plan).permit(:name)
  end
end
