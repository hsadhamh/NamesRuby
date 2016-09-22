

module Api::V1
  class NamesController < ApplicationController

      # GET /names
      def index
        @names = Name.filter(params.slice(:gender))
        render json: @names
      end

  end
end

