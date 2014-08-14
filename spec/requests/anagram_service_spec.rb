require 'spec_helper'

describe "Anagram Service" do
  describe "GET /list,of,words" do
    before { get("/list,of,words") }
    
    it "returns JSON" do
      expect(json).to_not be_nil
    end
    
    it "returns HTTP success (200)" do
      expect(last_response.status).to eq(200)
    end
  end
end
