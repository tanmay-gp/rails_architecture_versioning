module UsersModule
  module V2
    class UsersController < ApplicationController
      
      def initialize
        @service = UsersModule::V1::UserService
      end
      
      def index
        service = @service.new({:version => 2})
        response = service.call_submodule_service
        render json: {:fuck => response}
      end
    end
  end
end