# frozen_string_literal: true

require_relative 'lib/init'
run Rack::Cascade.new [API]
