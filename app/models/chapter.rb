class Chapter < ApplicationRecord

  before_action :set_chapter, only: [:show, :edit, :update, :destroy]

  def index
    @chapters = Chapter.all
  end

  def new
    @chapter = Chapter.new
  end

  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      redirect_to chapter_path(@chapter)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @chapter.update(chapter_params)
      redirect_to chapter_path(@chapter)
    else
      render :edit
    end
  end



  private

  def set_chapter
    @chapter = Chapter.find(params[:id])
  end

  def chapter_params
    params.require(:chapter).permit(:title, :chapter_number, :user_id, :status)
  end
end
