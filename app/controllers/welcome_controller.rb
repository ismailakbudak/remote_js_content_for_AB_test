# frozen_string_literal: true

class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :js_content

  def index; end

  def js_content
    hash = if params[:first_hash]
             { cats: 5, dogs: 1, mices: 1 }
           else
             { panda: 1, bear: 1}
           end
    @variant = random_weighted(hash)
    render :js_content, layout: false
  end

  private

  def sum_of_weights(weighted)
    weighted.inject(0) { |sum, (_item, weight)| sum + weight }
  end

  def random_weighted(weighted)
    max    = sum_of_weights(weighted)
    target = rand(1..max)
    weighted.each do |item, weight|
      return item if target <= weight
      target -= weight
    end
  end
end
