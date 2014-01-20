PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.full_backtrace= false # save the console
  conf.color_enabled= true   # save your eyes
  conf.formatter = :documentation
end

# You can use this method to custom specify a Rack app
# you want rack-test to invoke:
#
#   app PadrinoStudentManager::App
#   app PadrinoStudentManager::App.tap { |a| }
#   app(PadrinoStudentManager::App) do
#     set :foo, :bar
#   end
#
def app(app = nil, &blk)
  @app ||= block_given? ? app.instance_eval(&blk) : app
  @app ||= Padrino.application
end
