# frozen_string_literal: true

require 'spec_helper'

module LicenseFinder
  describe ConanPackage do
    subject { described_class.new('a package', '1.1.1', '', '') }

    its(:package_url) { should == 'https://conan.io/center/a+package/1.1.1' }
  end
end
