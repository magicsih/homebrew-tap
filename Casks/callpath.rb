cask "callpath" do
  version "0.1.0"
  sha256 "1804873e40995899cefeca0001656dbb48d7c2f92d0bbcbe84af44f1e5b59b4c"

  url "https://github.com/magicsih/callpath/releases/download/v#{version}/Callpath-#{version}-macos-universal.zip"
  name "Callpath"
  desc "Read Java and Kotlin changes in call-flow order"
  homepage "https://github.com/magicsih/callpath"

  depends_on macos: :ventura

  app "Callpath.app"
end
