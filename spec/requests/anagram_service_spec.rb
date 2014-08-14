require 'spec_helper'

describe "Anagram Service" do
  describe "GET /list,of,words" do
    it "returns JSON" do
      get "/list,of,words"
      expect(json).to_not be_nil
    end
    
    it "returns HTTP success (200)" do
      get "/list,of,words"
      expect(last_response.status).to eq(200)
    end
    
    it "returns anagrams for 'crepitus'" do
      get "/crepitus"
      expect(json).to eq({"crepitus" => ["cuprites","pictures","piecrust"]})
    end
    
    it "returns anagrams for crepitus,paste,kinship,enlist,boaster,fresher,sinks,knits,sort" do
      get "/crepitus,paste,kinship,enlist,boaster,fresher,sinks,knits,sort"
      expect(json).to eq({"crepitus" => ["cuprites","pictures","piecrust"],"paste" => ["pates","peats","septa","spate","tapes","tepas"],"kinship" => ["pinkish"],"enlist" => ["elints","inlets","listen","silent","tinsel"],"boaster" => ["boaters","borates","rebatos","sorbate"],"fresher" => ["refresh"],"sinks" => ["skins"],"knits" => ["skint","stink","tinks"],"sort" => ["orts","rots","stor","tors"]})
    end
    
    it "returns an empty array for 'sdfwehrtgegfg'" do
      get "/sdfwehrtgegfg"
      expect(json).to eq({"sdfwehrtgegfg" => []})
    end
  end
end
