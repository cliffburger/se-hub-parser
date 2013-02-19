$: << File.dirname(__FILE__)
$: << File.join(File.dirname(__FILE__),'se')

require 'hub_parser'

parser = HubParser.new('http://se-hub.hq.daptiv.com:4444/grid/console')
puts parser.parse