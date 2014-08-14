module ServiceHelpers
  include Rack::Test::Methods
  
  def app
    AnagramService
  end

  def json
    JSON.parse(last_response.body)
  end
end
