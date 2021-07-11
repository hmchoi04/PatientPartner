class ViewPartnersController < ApplicationController
  before_action :set_view_partner, only: %i[ show edit update destroy ]

  # GET /view_partners or /view_partners.json
  def index
    @view_partners = ViewPartner.all
  end

  # GET /view_partners/1 or /view_partners/1.json
  def show
  end

  # GET /view_partners/new
  def new
    @view_partner = ViewPartner.new
  end

  # GET /view_partners/1/edit
  def edit
  end

  # POST /view_partners or /view_partners.json
  def create
    @view_partner = ViewPartner.new(view_partner_params)

    respond_to do |format|
      if @view_partner.save
        format.html { redirect_to @view_partner, notice: "View partner was successfully created." }
        format.json { render :show, status: :created, location: @view_partner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @view_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /view_partners/1 or /view_partners/1.json
  def update
    respond_to do |format|
      if @view_partner.update(view_partner_params)
        format.html { redirect_to @view_partner, notice: "View partner was successfully updated." }
        format.json { render :show, status: :ok, location: @view_partner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @view_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /view_partners/1 or /view_partners/1.json
  def destroy
    @view_partner.destroy
    respond_to do |format|
      format.html { redirect_to view_partners_url, notice: "View partner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_view_partner
      @view_partner = ViewPartner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def view_partner_params
      params.require(:view_partner).permit(:first_name, :last_name)
    end
end
