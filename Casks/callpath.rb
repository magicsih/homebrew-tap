cask "callpath" do
  version "0.1.2"
  sha256 "7420991dac9ee278a8a2e9e3541e84573d9f909740011dd2241c7ab43e30dda1"

  url "https://github.com/magicsih/callpath/releases/download/v#{version}/Callpath-#{version}-macos-universal.zip"
  name "Callpath"
  desc "Read Java and Kotlin changes in call-flow order"
  homepage "https://github.com/magicsih/callpath"

  depends_on macos: :ventura

  app "Callpath.app"
end
