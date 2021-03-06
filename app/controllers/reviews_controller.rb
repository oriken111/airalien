class ReviewsController < ApplicationController
  def create
    @review = current_user.reviews.build(reviews_params)
    if @review.save
      redirect_to @review.room
    end
  end

  def destroy
    @review = Review.find(params[:id])
    room = @review.room
    @review.destroy

    redirect_to room
  end

  private
    def reviews_params
      params.require(:review).permit(:comment, :star, :room_id)
    end

end
