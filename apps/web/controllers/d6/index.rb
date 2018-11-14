require 'securerandom'

module Web
  module Controllers
    module D6
      class Index
        include Web::Action

        expose :roll

        def call(params)
          @roll = SecureRandom.random_number(1..6)
        end
      end
    end
  end
end
