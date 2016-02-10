class Admin::AdminsController < ApplicationController
  before_filter :authorize
  before_action :set_admin_admin, only: [:show, :edit, :update, :destroy]


  # GET /admin/admins
  def index
    @admin_admins = Admin::Admin.all
  end

  # GET /admin/admins/1
  def show
  end

  # GET /admin/admins/new
  def new
    @admin_admin = Admin::Admin.new
  end

  # GET /admin/admins/1/edit
  def edit
  end

  # POST /admin/admins
  def create
    @admin_admin = Admin::Admin.new(admin_admin_params)

    if @admin_admin.save
      redirect_to @admin_admin, notice: 'Admin was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/admins/1
  def update
    if @admin_admin.update(admin_admin_params)
      redirect_to @admin_admin, notice: 'Admin was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/admins/1
  def destroy
    @admin_admin.destroy
    redirect_to admin_admins_url, notice: 'Admin was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_admin
      @admin_admin = Admin::Admin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_admin_params
      params.require(:admin_admin).permit(:email, :password)
    end
end
