class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_model! 
end

def index
     @believers = Believer.sorting_table(params, :name).all
     @believer = Believer.sorting_table(params, :name).all
     end
