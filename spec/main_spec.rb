require_relative '../main'

RSpec.shared_examples "an input object" do
  it { is_expected.to respond_to(:is_up?) }
  it { is_expected.to respond_to(:is_down?) }
  it { is_expected.to respond_to(:is_left?) }
  it { is_expected.to respond_to(:is_right?) }
end

RSpec.describe "Input shared examples" do
  describe Up do
    it_behaves_like "an input object"
    end

  describe Down do
    it_behaves_like "an input object"
  end

  describe Left do
    it_behaves_like "an input object"
    end

  describe Right do
    it_behaves_like "an input object"
  end
end
