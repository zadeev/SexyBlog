class VotesController < ApplicationController
  
  before_action :auth_to_vote

  def plus_rating

    @vote = Vote.new
    @vote.entry_id = params[:id]
    @vote.user_id = session[:user_id]
    @vote.status = true
    @vote.save!


    redirect_to :back
  end

  def minus_rating
  	
  	
    @vote = Vote.new
    @vote.entry_id = params[:id]
    @vote.user_id = session[:user_id]
    @vote.status = false
    @vote.save!


    redirect_to :back
  end

  def auth_to_vote
  	unless session[:user_id]
  		redirect_to :back, notice: 'U should be logged in.'
  	end
  end

  def not_first_vote
  	

end