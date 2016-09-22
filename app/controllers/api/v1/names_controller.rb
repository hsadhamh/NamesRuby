module Api::V1
  class NamesController < ApplicationController

    # GET /names
    def index
      @names = Name.all
      render json: @names
    end

  end
end
