cask "leaflit" do
  version "0.3.1"
  sha256 "5e1a95105f877e44e561350ca679f11d90ccc6547ee89ad828a479f2c3480224"

  url "https://github.com/magicsih/leaflit/releases/download/v#{version}/Leaflit-#{version}-macos-arm64.zip"
  name "Leaflit"
  desc "Read-first Markdown viewer with explicit source editing"
  homepage "https://github.com/magicsih/leaflit"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Leaflit-#{version}/Leaflit.app"
  binary "#{appdir}/Leaflit.app/Contents/Resources/leaflit"
end
