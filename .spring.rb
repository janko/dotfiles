require "spring/client"

module Spring
  module Commands
    class RSpec
      def env(*)
        "test"
      end

      def exec_name
        "rspec"
      end
    end

    Spring.register_command "rspec", RSpec.new
  end

  module Commands
    class Cucumber
      def env(*)
        "test"
      end

      def exec_name
        "cucumber"
      end
    end

    Spring.register_command "cucumber", Cucumber.new
  end

  module Commands
    class Thor
      def env(*)
        "development"
      end

      def exec_name
        "thor"
      end
    end

    Spring.register_command "thor", Thor.new
  end
end
