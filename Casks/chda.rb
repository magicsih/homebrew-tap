# Homebrew cask for chda. Lives in the tap repository; this copy is the
# template the release workflow fills in (version and sha256).
cask "chda" do
  version "0.1.17"
  sha256 "83fb948b04c0a3f6127c139bd9039383bd200397219291c67c7931ef65e6e9ab"

  url "https://github.com/magicsih/chda/releases/download/v#{version}/chda-#{version}-macos-universal.zip"
  name "chda"
  desc "Terminal with a git worktree side panel and a status board for LLM coding agents"
  homepage "https://github.com/magicsih/chda"

  depends_on macos: :sonoma

  app "chda.app"
  binary "#{appdir}/chda.app/Contents/MacOS/chda"

  zap trash: [
    "~/Library/Application Support/chda",
    "~/.config/chda",
  ]
end
