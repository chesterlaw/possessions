class PossessionsController < ApplicationController
  before_action :set_possession, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @even_categories, @odd_categories = Category.all.partition { |category| category.order.even? }
    @uncategorized_possessions = Possession.all.where(got_rid_of: false, category: nil)
    @possession_count = Possession.all.where(got_rid_of: false).count
  end

  def new
    @possession = Possession.new
  end

  def edit
  end

  def create
    @possession = current_user.possessions.new(possession_params)

    respond_to do |format|
      if @possession.save
        format.html { redirect_to possessions_path, notice: 'Possession was successfully created.' }
        format.json { render :show, status: :created, location: @possession }
      else
        format.html { render :new }
        format.json { render json: @possession.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @possession.user == current_user
      respond_to do |format|
        if @possession.update(possession_params)
          if @possession.got_rid_of_reason
            @possession.got_rid_of_at = Time.now
            @possession.got_rid_of = true
            @possession.save!
          end
          format.html { redirect_to possessions_path, notice: 'Possession was successfully updated.' }
          format.json { render :show, status: :ok, location: @possession }
        else
          format.html { render :edit }
          format.json { render json: @possession.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    @possession.destroy
    respond_to do |format|
      format.html { redirect_to possessions_url, notice: 'Possession was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_possession
      @possession = Possession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def possession_params
      params.require(:possession).permit(:name, :description, :image_url, :got_rid_of_at, :got_rid_of_reason, :month_purchased, :year_purchased, :amazon_link, :category_id)
    end
end
