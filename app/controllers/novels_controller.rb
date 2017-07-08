class NovelsController < ApplicationController

  before_action :set_novel, only: [:show, :edit, :update, :destroy]

  def index
    @novels = Novel.all
  end

  def show
  end

  def new
    @novel = Novel.new
  end

  def create
    @novel = Novel.new(novel_params)
    if @novel.save
      redirect_to novel_path(@novel)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @novel.update(novel_params)
      redirect_to novel_path(@novel)
    else
      render :edit
    end
  end

  def destroy
    if @novel
      @novel.destroy
    end
    redirect_to novels_path
  end

  private

  def set_novel
    @novel = Novel.find(params[:id])
  end

  def novel_params
    params.require(:novel).permit(
      :name,
      :description,
      :author,
      :status,
      :release_date
    )
  end
end
