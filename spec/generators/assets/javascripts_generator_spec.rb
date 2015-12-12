# require "administrate/view_generator"
#
# module Administrate
#   module Generators
#     module Views
#       class EditGenerator < Administrate::ViewGenerator
#         source_root template_source_path
#
#         def copy_edit
#           copy_resource_template("edit")
#           copy_resource_template("_form")
#         end
#       end
#     end
#   end
# end
#
require "spec_helper"
require "generators/administrate/assets/javascripts_generator"
require "support/generator_spec_helpers"

describe Administrate::Generators::Assets::JavascriptsGenerator, :generator do
  describe "administrate:assets:javascripts" do
    it "copies the javascripts template into the `admin/application` namespace" do
      expected_contents = contents_for_application_template("javascripts")

      run_generator []
      contents = File.read(file("app/assets/admin/application/javascripts.html.erb"))

      expect(contents).to eq(expected_contents)
    end
  end
end
