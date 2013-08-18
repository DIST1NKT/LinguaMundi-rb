class SpokenLanguagesController < ApplicationController
  # GET /spoken_languages
  # GET /spoken_languages.json
  def index
    @spoken_languages = SpokenLanguage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spoken_languages }
    end
  end

  # GET /spoken_languages/1
  # GET /spoken_languages/1.json
  def show
    @spoken_language = SpokenLanguage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spoken_language }
    end
  end

  # GET /spoken_languages/new
  # GET /spoken_languages/new.json
  def new
    @spoken_language = SpokenLanguage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spoken_language }
    end
  end

  # GET /spoken_languages/1/edit
  def edit
    @spoken_language = SpokenLanguage.find(params[:id])
  end

  # POST /spoken_languages
  # POST /spoken_languages.json
  def create
    @spoken_language = SpokenLanguage.new(params[:spoken_language])

    respond_to do |format|
      if @spoken_language.save
        format.html { redirect_to @spoken_language, notice: 'Spoken language was successfully created.' }
        format.json { render json: @spoken_language, status: :created, location: @spoken_language }
      else
        format.html { render action: "new" }
        format.json { render json: @spoken_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spoken_languages/1
  # PUT /spoken_languages/1.json
  def update
    @spoken_language = SpokenLanguage.find(params[:id])

    respond_to do |format|
      if @spoken_language.update_attributes(params[:spoken_language])
        format.html { redirect_to @spoken_language, notice: 'Spoken language was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spoken_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spoken_languages/1
  # DELETE /spoken_languages/1.json
  def destroy
    @spoken_language = SpokenLanguage.find(params[:id])
    @spoken_language.destroy

    respond_to do |format|
      format.html { redirect_to spoken_languages_url }
      format.json { head :no_content }
    end
  end
end
