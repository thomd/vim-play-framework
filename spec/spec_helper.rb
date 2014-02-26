require 'vimrunner'
require 'vimrunner/rspec'

Vimrunner::RSpec.configure do |config|
  config.reuse_server = true
  plugin_path = File.expand_path('.')

  config.start_vim do
    vim = Vimrunner.start
    vim.add_plugin(plugin_path, 'ftdetect/play.vim')
    vim
  end
end
