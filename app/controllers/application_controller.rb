class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include CurrentDeck
  require 'googlecharts'
  protect_from_forgery with: :exception


  protected

  def graphme(data)
    Gchart.line(  :size => '200x300', 
                :title => "example title",
                :bg => 'efefef',
                :legend => ['first data set label', 'second data set label'],
                :data => [10, 30, 120, 45, 72])
  end

end
