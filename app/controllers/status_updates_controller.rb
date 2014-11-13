class StatusUpdatesController < ApplicationController
  before_action :get_status_update, only: [:update, :destroy, :show, :edit]

  def index
    @status_updates = StatusUpdate.all
  end

  def show
  end

  def edit
  end

  def update
    if @status_update.update(status_update_params)
      redirect_to @status_update, notice: "Status update successfully updated"
    else
      render :edit
    end
  end

  def new
    @status_update = StatusUpdate.new
  end

  def create
    @status_update = StatusUpdate.new(status_update_params)
    if @status_update.save
      redirect_to @status_update, notice: "Status update successfully created"
    else
      render :new
    end
  end

  def destroy
    @status_update.destroy
    redirect_to root_path, notice: "Status update successfully deleted"
  end

  private

    def get_status_update
      @status_update = StatusUpdate.find(params[:id])
    end

    def status_update_params
      params.require(:status_update).permit(:user, :status, :likes)
    end
end
