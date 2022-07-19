class PagesController < ApplicationController
  def about
  end

  def option
    @countries = ["Myanmar", "Cambodia", "Laos", "Indonesia", "Philipines", "Borneo"]

      if params[:country]
        @countries = @countries.select { |country| country.start_with?(params[:country])}
      end
  end

  def home
  end
end
