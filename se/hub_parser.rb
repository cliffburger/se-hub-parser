require "net/http"
require 'socket'

class HubParser
  attr_reader :hub_server_uri

  def initialize (hub_server_url)
    @hub_server_uri = URI.parse(hub_server_url)
  end

  def read
    Net::HTTP.get(@hub_server_uri)
  end

  def parse
    read.scan(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
  end

end