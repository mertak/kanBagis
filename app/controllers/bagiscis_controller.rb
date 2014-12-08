class BagiscisController < ApplicationController
  # GET /bagiscis
  # GET /bagiscis.json
  def index
    @bagiscis = Bagisci.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bagiscis }
    end
  end

  # GET /bagiscis/1
  # GET /bagiscis/1.json
  def show
    @bagisci = Bagisci.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bagisci }
    end
  end

  # GET /bagiscis/new
  # GET /bagiscis/new.json
  def new
    @bagisci = Bagisci.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bagisci }
    end
  end

  # GET /bagiscis/1/edit
  def edit
    @bagisci = Bagisci.find(params[:id])
  end

  # POST /bagiscis
  # POST /bagiscis.json
  def create
    @bagisci = Bagisci.new(params[:bagisci])

    respond_to do |format|
      if @bagisci.save
        format.html { redirect_to @bagisci, notice: 'Bagisci was successfully created.' }
        format.json { render json: @bagisci, status: :created, location: @bagisci }
      else
        format.html { render action: "new" }
        format.json { render json: @bagisci.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bagiscis/1
  # PUT /bagiscis/1.json
  def update
    @bagisci = Bagisci.find(params[:id])

    respond_to do |format|
      if @bagisci.update_attributes(params[:bagisci])
        format.html { redirect_to @bagisci, notice: 'Bagisci was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bagisci.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bagiscis/1
  # DELETE /bagiscis/1.json
  def destroy
    @bagisci = Bagisci.find(params[:id])
    @bagisci.destroy

    respond_to do |format|
      format.html { redirect_to bagiscis_url }
      format.json { head :no_content }
    end
  end
end
