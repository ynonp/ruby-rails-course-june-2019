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
  end

  def click

  end

  def click_get

  end
end
