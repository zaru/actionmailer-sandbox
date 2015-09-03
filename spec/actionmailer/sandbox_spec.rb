require 'spec_helper'

describe ActionMailer::Sandbox do
  it 'has a version number' do
    expect(ActionMailer::Sandbox::VERSION).not_to be nil
  end
end
