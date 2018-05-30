class ReviewsController < ApplicationController
  before_action :set_restaurant_review, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_reviews
  # GET /restaurant_reviews.json
  def index
    @reviews = Review.all
  end

  def by_restaurant
    @reviews = Review.where(restaurant_id: params[:id])
  end

  # GET /restaurant_reviews/1
  # GET /restaurant_reviews/1.json
  def show
    Review.find(params[:id])
  end

  # GET /restaurant_reviews/new
  def new
    @review = Review.new
  end

  def new_by_retaurant
    @review = Review.new
    @review.restaurant_id = params[:id]
  end

  # GET /restaurant_reviews/1/edit
  def edit
  end

  # POST /restaurant_reviews
  # POST /restaurant_reviews.json
  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Restaurant review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_reviews/1
  # PATCH/PUT /restaurant_reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Restaurant review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_reviews/1
  # DELETE /restaurant_reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Restaurant review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:reviewer_name, :rating, :comment, :restaurant_id)
    end
end
