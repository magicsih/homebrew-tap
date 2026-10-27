# Homebrew cask for chda. Lives in the tap repository; this copy is the
# template the release workflow fills in (version and sha256).
cask "chda" do
  version "1.6.1"
  sha256 "c798ee9a160857be49aa27eacae97984d1764661617a2b9743b5b3e1d63d0885"

  url "https://github.com/magicsih/chda/releases/download/v#{version}/chda-#{version}-macos-universal.zip"
  name "chda"
  desc "Terminal with a git worktree side panel and a status board for LLM coding agents"
  homepage "https://github.com/magicsih/chda"

  auto_updates true

  depends_on macos: :sonoma

  app "chda.app"
  binary "#{appdir}/chda.app/Contents/MacOS/chda"

  zap trash: [
    "~/Library/Application Support/chda",
    "~/.config/chda",
  ]
end
