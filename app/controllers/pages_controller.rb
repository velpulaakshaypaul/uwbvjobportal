class PagesController < ApplicationController
  def about
    render template: "pages/about"
  end

  def contact
  end


  def paidemployment
    @paidemployment
  end
  def volunteer
    @volunteer
  end

end
