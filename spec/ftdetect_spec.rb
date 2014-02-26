require 'spec_helper'

describe 'play' do

  it 'should set filetype for tag files located within views/tags to html' do
    FileUtils.mkdir_p 'views/tags'
    vim.edit! 'views/tags/test.tag'
    vim.command('set filetype?').should == 'filetype=html'
  end

  it 'should not set filetype for tag files located outside of views/tags' do
    FileUtils.mkdir_p 'views/tags'
    vim.edit! 'foo/test.tag'
    vim.command('set filetype?').should == 'filetype='
  end

  after(:all) do
    #vim.kill
  end

end
