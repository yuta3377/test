require 'rails_helper'
RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    FactoryBot.create :topic

    before do
      get posts_path
    end

    it { expect(response.status).to eq 200 }

      get posts_index_path
      expect(response).to have_http_status(200)
    end
  end
end
