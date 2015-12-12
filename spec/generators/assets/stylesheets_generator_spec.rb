require "rails_helper"
require "generators/administrate/assets/stylesheets_generator"
require "support/generator_spec_helpers"

describe Administrate::Generators::Assets::StylesheetsGenerator, :generator do
  describe "administrate:assets:stylesheets" do
    it "copies the stylesheets directory into the `administrate` namespace" do
      files = Dir.glob("app/assets/stylesheets/administrate/**/*.scss")

      run_generator []

      files.each do |copied_file_path|
        expected_contents = File.read(copied_file_path)
        contents = File.read(file(copied_file_path))

        expect(contents).to eq(expected_contents)
      end
    end
  end
end
