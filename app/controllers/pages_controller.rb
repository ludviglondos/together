class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  layout 'no_navbar_no_footer', only: [:home]

  def home
  end
end
