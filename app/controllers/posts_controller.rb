class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :begin, :end, :allday, :schedule_memo))
    if @post.save
      flash[:notice] = "新しいスケジュールを登録しました"
      redirect_to :posts
    else
      flash[:failed] = "スケジュールの登録に失敗しました"
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :begin, :end, :allday, :schedule_memo))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :posts
    else
      flash[:failed] = "スケジュールの更新に失敗しました"
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :posts
  end
end
