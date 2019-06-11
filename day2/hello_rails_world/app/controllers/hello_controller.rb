class HelloController < ApplicationController
  def index
    @name = params[:name] || 'Visitor'
    @items = %w[
                  sunday
                  monday
                  tuesday
                  wednesday
                  thursday
                  friday
                  saturday
              ]
    q = params[:q] || ''

    @items = @items.filter { |w| w.include?(q) }

    # Can render another view
    render :index
  end

  def click

  end

  def click_get

  end
end
