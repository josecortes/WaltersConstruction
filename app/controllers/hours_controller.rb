class HoursController < ApplicationController
  # GET /hours
  # GET /hours.json
  def index
    @title = "Hours Index"
    @hours = Hour.where(:user_id => cookies[:user_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hours }
    end
  end

  # GET /hours/1
  # GET /hours/1.json
  def show
    @title = "Hours Show"
    @hour = Hour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hour }
    end
  end

  # GET /hours/new
  # GET /hours/new.json
  def new
    @title = "Hours New"
    @hour = Hour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hour }
    end
  end

  # GET /hours/1/edit
  def edit
    @hour = Hour.find(params[:id])
  end

  # POST /hours
  # POST /hours.json
  def create
    @hour = Hour.new(params[:hour])
    @hour[:user_id] = cookies[:user_id]

    respond_to do |format|
      if @hour.save
        format.html { redirect_to @hour, notice: 'Hour was successfully created.' }
        format.json { render json: @hour, status: :created, location: @hour }
      else
        format.html { render action: "new" }
        format.json { render json: @hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hours/1
  # PUT /hours/1.json
  def update
    @hour = Hour.find(params[:id])

    respond_to do |format|
      if @hour.update_attributes(params[:hour])
        format.html { redirect_to @hour, notice: 'Hour was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours/1
  # DELETE /hours/1.json
  def destroy
    @hour = Hour.find(params[:id])
    @hour.destroy

    respond_to do |format|
      format.html { redirect_to hours_url }
      format.json { head :ok }
    end
  end
  
  def o_report
    render 'report_params'
  end
  
  def reprun
    @hours = Hour.all
    @employee = User.getname(params[:employee_id])
    @emp_name = @employee.name
    
  respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hours }
    end
  end

end
