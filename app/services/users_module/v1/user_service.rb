require "some_class"
module UsersModule
  module V1
    class UserService

      def initialize(options)
        @use = options[:version]
        @generic_provider_service = SomeClass.new.decide(@use)
      end

      def call_submodule_service
        gps = @generic_provider_service.new
        return gps.printsomething
      end

    end
  end
end