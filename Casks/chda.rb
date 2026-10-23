# Homebrew cask for chda. Lives in the tap repository; this copy is the
# template the release workflow fills in (version and sha256).
cask "chda" do
  version "1.5.0"
  sha256 "659216d122384eaf3c7fb690f7ed82b6acaf6103a6f04f1d5da0de73c946b70e"

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
