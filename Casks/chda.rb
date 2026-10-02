# Homebrew cask for chda. Lives in the tap repository; this copy is the
# template the release workflow fills in (version and sha256).
cask "chda" do
  version "0.1.5"
  sha256 "bbd2e6f79c2f5a0147f48cfff1941be25a5f19a5f35d31cb4db2db06f425e30d"

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
