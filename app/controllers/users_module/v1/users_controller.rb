module UsersModule
  module V1
    class UsersController < ApplicationController
      def index
        render json: {:fuck => "you"}
      end
    end
  end
end