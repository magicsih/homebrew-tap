# Homebrew cask for chda. Lives in the tap repository; this copy is the
# template the release workflow fills in (version and sha256).
cask "chda" do
  version "0.1.2"
  sha256 "9b4c7edc1989b56b8e5e6df35f23a09f62c8c5d0df21945c83ec9703c8888715"

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
