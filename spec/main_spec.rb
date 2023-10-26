require_relative '../main'

RSpec.shared_examples "an input object" do
  it { is_expected.to respond_to(:handle_input) }
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

RSpec.shared_examples "a tile object" do
  it { is_expected.to respond_to(:is_air?) }
  it { is_expected.to respond_to(:is_flux?) }
  it { is_expected.to respond_to(:is_unbreakable?) }
  it { is_expected.to respond_to(:is_player?) }
  it { is_expected.to respond_to(:is_stone?) }
  it { is_expected.to respond_to(:is_falling_stone?) }
  it { is_expected.to respond_to(:is_box?) }
  it { is_expected.to respond_to(:is_falling_box?) }
  it { is_expected.to respond_to(:is_key1?) }
  it { is_expected.to respond_to(:is_lock1?) }
  it { is_expected.to respond_to(:is_key2?) }
  it { is_expected.to respond_to(:is_lock2?) }
  it { is_expected.to respond_to(:is_passable?) }
  it { is_expected.to respond_to(:is_blockable?) }
end

RSpec.describe "Tile shared examples" do
  describe Air do
    it_behaves_like "a tile object"
  end

  describe Flux do
    it_behaves_like "a tile object"
  end

  describe Unbreakable do
    it_behaves_like "a tile object"
  end

  describe Player do
    it_behaves_like "a tile object"
  end

  describe Stone do
    it_behaves_like "a tile object"
  end

  describe FallingStone do
    it_behaves_like "a tile object"
  end

  describe Box do
    it_behaves_like "a tile object"
  end

  describe FallingBox do
    it_behaves_like "a tile object"
  end

  describe Key1 do
    it_behaves_like "a tile object"
  end

  describe Lock1 do
    it_behaves_like "a tile object"
  end

  describe Key2 do
    it_behaves_like "a tile object"
  end

  describe Lock2 do
    it_behaves_like "a tile object"
  end
end
