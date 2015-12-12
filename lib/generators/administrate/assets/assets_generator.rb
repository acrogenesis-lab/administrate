require "administrate/view_generator"

module Administrate
  module Generators
    class AssetsGenerator < Administrate::ViewGenerator
      def copy_templates
        Rails::Generators.invoke("administrate:assets:stylesheets")
        Rails::Generators.invoke("administrate:assets:javascripts")
      end
    end
  end
end
