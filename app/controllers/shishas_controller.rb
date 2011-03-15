class ShishasController < ApplicationController
  # GET /shishas
  # GET /shishas.xml
  def index
    @shishas = Shisha.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shishas }
    end
  end

  # GET /shishas/1
  # GET /shishas/1.xml
  def show
    @shisha = Shisha.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shisha }
    end
  end

  # GET /shishas/new
  # GET /shishas/new.xml
  def new
    @shisha = Shisha.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shisha }
    end
  end

  # GET /shishas/1/edit
  def edit
    @shisha = Shisha.find(params[:id])
  end

  # POST /shishas
  # POST /shishas.xml
  def create
    @shisha = Shisha.new(params[:shisha])

    respond_to do |format|
      if @shisha.save
        format.html { redirect_to(@shisha, :notice => 'Shisha was successfully created.') }
        format.xml  { render :xml => @shisha, :status => :created, :location => @shisha }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shisha.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shishas/1
  # PUT /shishas/1.xml
  def update
    @shisha = Shisha.find(params[:id])

    respond_to do |format|
      if @shisha.update_attributes(params[:shisha])
        format.html { redirect_to(@shisha, :notice => 'Shisha was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shisha.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shishas/1
  # DELETE /shishas/1.xml
  def destroy
    @shisha = Shisha.find(params[:id])
    @shisha.destroy

    respond_to do |format|
      format.html { redirect_to(shishas_url) }
      format.xml  { head :ok }
    end
  end
end
