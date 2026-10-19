cask "leaflit" do
  version "0.3.0"
  sha256 "1735b01cdd702be50c8f1275bccdf235e7d2fd25c1c1640456e92a990f22d418"

  url "https://github.com/magicsih/leaflit/releases/download/v#{version}/Leaflit-#{version}-macos-arm64.zip"
  name "Leaflit"
  desc "Read-first Markdown viewer with explicit source editing"
  homepage "https://github.com/magicsih/leaflit"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Leaflit-#{version}/Leaflit.app"
  binary "#{appdir}/Leaflit.app/Contents/Resources/leaflit"
end
