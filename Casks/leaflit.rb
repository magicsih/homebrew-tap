cask "leaflit" do
  version "0.2.0"
  sha256 "2289bb755734ea82bc10e41def7c6f11675f835a60fc8244d8af007e4c50a812"

  url "https://github.com/magicsih/leaflit/releases/download/v#{version}/Leaflit-#{version}-macos-arm64.zip"
  name "Leaflit"
  desc "Read-only Markdown viewer with offline diagrams and math"
  homepage "https://github.com/magicsih/leaflit"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Leaflit-#{version}/Leaflit.app"
  binary "#{appdir}/Leaflit.app/Contents/Resources/leaflit"
end
