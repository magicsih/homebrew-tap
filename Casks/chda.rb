# Homebrew cask for chda. Lives in the tap repository; this copy is the
# template the release workflow fills in (version and sha256).
cask "chda" do
  version "1.7.0"
  sha256 "f23b17ff1233a3dd76ca5f2cd92efcf7e6f65bc9a408de079ee3e3b5c458f49f"

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
