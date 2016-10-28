class OldPossessionsController < ApplicationController
  def index
    @possessions = Possession.all.where(got_rid_of: true)
    render 'possessions/index'
  end
end
