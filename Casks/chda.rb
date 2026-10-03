# Homebrew cask for chda. Lives in the tap repository; this copy is the
# template the release workflow fills in (version and sha256).
cask "chda" do
  version "0.1.8"
  sha256 "c6aaa4e4a06ea8dbbd7a43d6b8561e7c38a1c732366472d6b8c96f710a061ff1"

  url "https://github.com/magicsih/chda/releases/download/v#{version}/chda-#{version}-macos-arm64.zip"
  name "chda"
  desc "Terminal with a git worktree side panel and a status board for LLM coding agents"
  homepage "https://github.com/magicsih/chda"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "chda.app"
  binary "#{appdir}/chda.app/Contents/MacOS/chda"

  zap trash: [
    "~/Library/Application Support/chda",
    "~/.config/chda",
  ]
end
