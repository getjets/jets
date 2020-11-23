# frozen_string_literal: true

RSpec.describe Jets::Rails::Railtie do
  subject(:railtie) { described_class.instance }

  it "reloads" do
    Rails.application.reloader.reload!
    expect(true).to eq true
  end
end