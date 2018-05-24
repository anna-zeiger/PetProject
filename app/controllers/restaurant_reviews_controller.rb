class RestaurantReviewsController < ApplicationController
  before_action :set_restaurant_review, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_reviews
  # GET /restaurant_reviews.json
  def index
    @restaurant_reviews = RestaurantReview.all
  end

  # GET /restaurant_reviews/1
  # GET /restaurant_reviews/1.json
  def show
  end

  # GET /restaurant_reviews/new
  def new
    @restaurant_review = RestaurantReview.new
  end

  # GET /restaurant_reviews/1/edit
  def edit
  end

  # POST /restaurant_reviews
  # POST /restaurant_reviews.json
  def create
    @restaurant_review = RestaurantReview.new(restaurant_review_params)
    @restaurnar =

    respond_to do |format|
      if @restaurant_review.save
        format.html { redirect_to @restaurant_review, notice: 'Restaurant review was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_review }
      else
        format.html { render :new }
        format.json { render json: @restaurant_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_reviews/1
  # PATCH/PUT /restaurant_reviews/1.json
  def update
    respond_to do |format|
      if @restaurant_review.update(restaurant_review_params)
        format.html { redirect_to @restaurant_review, notice: 'Restaurant review was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_review }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_reviews/1
  # DELETE /restaurant_reviews/1.json
  def destroy
    @restaurant_review.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_reviews_url, notice: 'Restaurant review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_review
      @restaurant_review = RestaurantReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_review_params
      params.require(:restaurant_review).permit(:reviewer_name, :rating, :comment)
    end
end
