class PresidentsController < ApplicationController
  def one_president_action
    @president = President.last
    render 'one_president_page.html.erb'
  end

  def all_presidents_action
    @president = President.all
    render 'all_presidents_page.html.erb'
  end
end
