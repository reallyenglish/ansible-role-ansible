require "spec_helper"
require "serverspec"

package = "ansible"

case os[:family]
when "freebsd"
  package = "ansible"
end

describe package(package) do
  it { should be_installed }
end
