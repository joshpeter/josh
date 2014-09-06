class BelieversController < ApplicationController
  # GET /believers
  # GET /believers.json
  def index
     @believers = Believer.sorting_table(params, :name).all
     @believer = Believer.sorting_table(params, :name).all
    @believers = Believer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @believers }
    end
  end

  # GET /believers/1
  # GET /believers/1.json
  
  def show
    @believer = Believer.find(params[:id])
    @believer = Believer.sorting_table(params, :name).all
    @believers = Believer.sorting_table(params, :name).all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @believer }
    end
  end

  # GET /believers/new
  # GET /believers/new.json
  def new
    @believer = Believer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @believer }
    end
  end

  # GET /believers/1/edit
  def edit
    @believer = Believer.find(params[:id])
  end

  # POST /believers
  # POST /believers.json
  def create
    @believer = Believer.new(params[:believer])

    respond_to do |format|
      if @believer.save
        format.html { redirect_to @believer, notice: 'Believer was successfully created.' }
        format.json { render json: @believer, status: :created, location: @believer }
      else
        format.html { render action: "new" }
        format.json { render json: @believer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /believers/1
  # PUT /believers/1.json
  def update
    @believer = Believer.find(params[:id])

    respond_to do |format|
      if @believer.update_attributes(params[:believer])
        format.html { redirect_to @believer, notice: 'Believer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @believer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /believers/1
  # DELETE /believers/1.json
  def destroy
    @believer = Believer.find(params[:id])
    @believer.destroy

    respond_to do |format|
      format.html { redirect_to believers_url }
      format.json { head :no_content }
    end
  end
end
