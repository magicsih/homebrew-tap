cask "callpath" do
  version "0.1.1"
  sha256 "95e69a08059cce10c6203d976760a027369670055958305a92ec70b914897c77"

  url "https://github.com/magicsih/callpath/releases/download/v#{version}/Callpath-#{version}-macos-universal.zip"
  name "Callpath"
  desc "Read Java and Kotlin changes in call-flow order"
  homepage "https://github.com/magicsih/callpath"

  depends_on macos: :ventura

  app "Callpath.app"
end
