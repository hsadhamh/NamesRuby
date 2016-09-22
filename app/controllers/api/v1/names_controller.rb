

module Api::V1
  class NamesController < ApplicationController

      # GET /names
      def index
        @names = Name.filter(params.slice(:gender))
        render status: 200, json: @names
      end

  end
end

