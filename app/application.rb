require 'time'

class Application
  def call(env)
    resp = Rack::Response.new

    t1 = Time.now.hour


    if t1 > 12 || t1 == 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end
