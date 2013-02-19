$: << File.dirname(__FILE__)
$: << File.join(File.dirname(__FILE__),'se')

require 'sinatra'
require 'hub_parser'

get '/' do
  parser = HubParser.new('http://se-hub.hq.daptiv.com:4444/grid/console')
  parser.parse
end