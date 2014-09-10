class LanguageSectionsController < ApplicationController
  before_action :set_language_section, only: [:show, :edit, :update, :destroy]
  before_action :set_removable_variables

  # GET /language_sections
  # GET /language_sections.json
  def index
    @language_sections = LanguageSection.all
  end

  # GET /language_sections/1
  # GET /language_sections/1.json
  def show
  end

  # GET /language_sections/new
  def new
    @language_section = LanguageSection.new
  end

  # GET /language_sections/1/edit
  def edit
  end

  # POST /language_sections
  # POST /language_sections.json
  def create
    @language_section = LanguageSection.new(language_section_params)

    respond_to do |format|
      if @language_section.save
        format.html { redirect_to @language_section, notice: 'Language section was successfully created.' }
        format.json { render action: 'show', status: :created, location: @language_section }
      else
        format.html { render action: 'new' }
        format.json { render json: @language_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /language_sections/1
  # PATCH/PUT /language_sections/1.json
  def update
    respond_to do |format|
      if @language_section.update(language_section_params)
        format.html { redirect_to @language_section, notice: 'Language section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @language_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_sections/1
  # DELETE /language_sections/1.json
  def destroy
    @language_section.destroy
    respond_to do |format|
      format.html { redirect_to language_sections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language_section
      @language_section = LanguageSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_section_params
      params.require(:language_section).permit(:language, :section, :info)
    end
    
    def set_removable_variables
      @languages = Language.all
      @cur_lang = "Python" # TODO: Remove

      @lang_pages = [
                      "About",
                      "Setup",
                      "Syntax",
                      "Variables"
                    ]
    end
    
end
