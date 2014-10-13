require 'test/unit'
require 'rack/test'
require_relative '../../pedometer'

class LiveDataFemaleTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_walk
    get '/upload/test/data/female-167-70_1-100-10-walk.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/female-167-70_2-100-10-walk.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/female-167-70_3-100-10-walk.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/female-167-70_4-100-10-walk.txt'
    assert_equal 200, last_response.status
  end

  def test_run
    get '/upload/test/data/female-167-70_1-100-10-run.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/female-167-70_2-100-10-run.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/female-167-70_3-100-10-run.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/female-167-70_4-100-10-run.txt'
    assert_equal 200, last_response.status
  end

  def test_bagwalk
    get '/upload/test/data/female-167-70_1-100-10-bagwalk.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/female-167-70_2-100-10-bagwalk.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/female-167-70_3-100-10-bagwalk.txt'
    assert_equal 200, last_response.status

    get '/upload/test/data/female-167-70_4-100-10-bagwalk.txt'
    assert_equal 200, last_response.status
  end

end