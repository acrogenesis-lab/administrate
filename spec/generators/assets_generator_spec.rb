require "rails_helper"
require "generators/administrate/assets/assets_generator"
require "support/generator_spec_helpers"

describe Administrate::Generators::AssetsGenerator, :generator do
  describe "administrate:assets" do
    it "runs all sub-generators" do
      allow(Rails::Generators).to receive(:invoke)
      resource = "users"

      run_generator []

      expect(Rails::Generators).to invoke_generator("administrate:assets:javascripts")
      expect(Rails::Generators).to invoke_generator("administrate:assets:stylesheets")
    end
  end

  def invoke_generator(*args)
    have_received(:invoke).with(*args)
  end
end
