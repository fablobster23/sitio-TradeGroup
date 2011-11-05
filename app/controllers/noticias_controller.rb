class NoticiasController < ApplicationController
  # GET /noticias
  # GET /noticias.json
  def index
    @noticias = Noticia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @noticias }
    end
  end

  # GET /noticias/1
  # GET /noticias/1.json
  def show
    @noticia = Noticia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @noticia }
    end
  end

  # GET /noticias/new
  # GET /noticias/new.json
  def new
    @noticia = Noticia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @noticia }
    end
  end

  # GET /noticias/1/edit
  def edit
    @noticia = Noticia.find(params[:id])
  end

  # POST /noticias
  # POST /noticias.json
  def create
    @noticia = Noticia.new(params[:noticia])

    respond_to do |format|
      if @noticia.save
        format.html { redirect_to @noticia, notice: 'Noticia was successfully created.' }
        format.json { render json: @noticia, status: :created, location: @noticia }
      else
        format.html { render action: "new" }
        format.json { render json: @noticia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /noticias/1
  # PUT /noticias/1.json
  def update
    @noticia = Noticia.find(params[:id])

    respond_to do |format|
      if @noticia.update_attributes(params[:noticia])
        format.html { redirect_to @noticia, notice: 'Noticia was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @noticia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noticias/1
  # DELETE /noticias/1.json
  def destroy
    @noticia = Noticia.find(params[:id])
    @noticia.destroy

    respond_to do |format|
      format.html { redirect_to noticias_url }
      format.json { head :ok }
    end
  end
end
