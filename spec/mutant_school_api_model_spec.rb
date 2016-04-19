require 'spec_helper'

describe MutantSchoolAPIModel do
  it 'has a version number' do
    expect(::MutantSchoolAPIModel::VERSION).wont_be_nil
  end

  it 'does something useful' do
    expect(false).must_be_same_as true
  end
end
