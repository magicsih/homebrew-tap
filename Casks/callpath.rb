cask "callpath" do
  version "0.1.1"
  sha256 "7321c96977be4b8e8165ee247c4d5995e492156eecdd23b93df3dc42eded331b"

  url "https://github.com/magicsih/callpath/releases/download/v#{version}/Callpath-#{version}-macos-universal.zip"
  name "Callpath"
  desc "Read Java and Kotlin changes in call-flow order"
  homepage "https://github.com/magicsih/callpath"

  depends_on macos: :ventura

  app "Callpath.app"
end
