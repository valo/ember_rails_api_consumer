class ResponseLogger < Faraday::Response::Middleware
  def on_complete(env)
    Rails.logger.info env[:body]
  end
end


Her::API.setup url: "http://localhost:3000" do |c|
  # Request
  c.use Faraday::Request::UrlEncoded

  c.use ResponseLogger

  # Response
  c.use EmberDataActiveModelParser::Middleware

  # Adapter
  c.use Faraday::Adapter::NetHttp
end
