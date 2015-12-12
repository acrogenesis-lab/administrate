require "rails/generators/base"

module Administrate
  module Generators
    module Assets
      class StylesheetsGenerator < Rails::Generators::Base
        DIRECTORY = "app/assets/stylesheets/administrate"

        def self.template_source_path
          File.expand_path(
            "../../../../../",
            __FILE__,
          )
        end

        source_root template_source_path

        def copy_partials
          directory DIRECTORY, DIRECTORY
        end

        private

        def copy_field_partial(partial_name)
          resource_path = args.first.try(:underscore)
          template_file = "#{resource_path}/_#{partial_name}.html.erb"

          copy_file(
            template_file,
            "app/assets/fields/#{template_file}",
          )
        end
      end
    end
  end
end
