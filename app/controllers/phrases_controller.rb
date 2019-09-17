class PhrasesController < ApplicationController

  def index
  	@phrases = Phrase.all
  end

  def new
  	@phrase = Phrase.new
  end

  def create
  	Phrase.create(phrase_params)
  	redirect_to root_path
  end

  private

  def phrase_params
  	params.require(:phrase).permit(:word)
  end
  
end
