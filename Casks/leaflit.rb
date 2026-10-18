cask "leaflit" do
  version "0.1.0"
  sha256 "0fbbdf417f32d49ee62553cd358dfae50b447eb89f187e49b2c9c198c627318d"

  url "https://github.com/magicsih/leaflit/releases/download/v#{version}/Leaflit-#{version}-macos-arm64.zip"
  name "Leaflit"
  desc "Read-only Markdown viewer with offline diagrams and math"
  homepage "https://github.com/magicsih/leaflit"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Leaflit-#{version}/Leaflit.app"
  binary "#{appdir}/Leaflit.app/Contents/Resources/leaflit"
end
