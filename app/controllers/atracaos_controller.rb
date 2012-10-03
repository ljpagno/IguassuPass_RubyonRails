class AtracaosController < ApplicationController
  # GET /atracaos
  # GET /atracaos.json
  def index
    @atracaos = Atracao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @atracaos }
    end
  end

  # GET /atracaos/1
  # GET /atracaos/1.json
  def show
    @atracao = Atracao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @atracao }
    end
  end

  # GET /atracaos/new
  # GET /atracaos/new.json
  def new
    @atracao = Atracao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @atracao }
    end
  end

  # GET /atracaos/1/edit
  def edit
    @atracao = Atracao.find(params[:id])
  end

  # POST /atracaos
  # POST /atracaos.json
  def create
    @atracao = Atracao.new(params[:atracao])

    respond_to do |format|
      if @atracao.save
        format.html { redirect_to @atracao, :notice => 'Atracao was successfully created.' }
        format.json { render :json => @atracao, :status => :created, :location => @atracao }
      else
        format.html { render :action => "new" }
        format.json { render :json => @atracao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /atracaos/1
  # PUT /atracaos/1.json
  def update
    @atracao = Atracao.find(params[:id])

    respond_to do |format|
      if @atracao.update_attributes(params[:atracao])
        format.html { redirect_to @atracao, :notice => 'Atracao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @atracao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /atracaos/1
  # DELETE /atracaos/1.json
  def destroy
    @atracao = Atracao.find(params[:id])
    @atracao.destroy

    respond_to do |format|
      format.html { redirect_to atracaos_url }
      format.json { head :no_content }
    end
  end
end
