class Vote < ActiveRecord::Base

  def plus_rating

  	@entry = Entry.find(params[:id])
    self.new!
    self.entry_id = @entry.id
    self.user_id = session[:user_id]
    self.status = true
    self.save!


    redirect_to :back
  end

end
