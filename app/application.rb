class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now

    if time.hour >= 12
      resp.write "Afternoon"
    else
      resp.write "Morning"
    end

    resp.finish
  end
end
