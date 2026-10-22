# Homebrew cask for chda. Lives in the tap repository; this copy is the
# template the release workflow fills in (version and sha256).
cask "chda" do
  version "1.4.0"
  sha256 "a33ad54f0ded6dda40ee2df1c485fc4040b5f17041e79248790d759924f5e142"

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
