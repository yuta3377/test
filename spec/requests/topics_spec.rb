require 'rails_helper'
RSpec.describe TopicsController, type: :request do
  describe 'get #index' do
    FactoryBot.create :topic

    before do
      get topics_path
    end

    it { expect(response.status).to eq 200 }

    it "トピックス名が表示されていること" do
      expect(response.body).to include "サッカー"
    end
  end
end
