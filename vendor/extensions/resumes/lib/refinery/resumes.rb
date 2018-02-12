require 'refinerycms-core'

module Refinery
  autoload :ResumesGenerator, 'generators/refinery/resumes_generator'

  module Resumes
    require 'refinery/resumes/engine'

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
