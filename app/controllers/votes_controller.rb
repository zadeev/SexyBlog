class VotesController < ApplicationController
  
  def plus_rating

  	@entry = Entry.find(params[:id])
    @vote = Vote.new
    @vote.entry_id = @entry.id
    @vote.user_id = session[:user_id]
    @vote.status = true
    @vote.save!


    redirect_to :back
  end

  def minus_rating
  	
  	@entry = Entry.find(params[:id])
    @vote = Vote.new
    @vote.entry_id = @entry.id
    @vote.user_id = session[:user_id]
    @vote.status = false
    @vote.save!


    redirect_to :back
  end

end