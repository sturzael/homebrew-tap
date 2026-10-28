cask "speakhold" do
  version "0.2.0"
  sha256 "a9d530826cbbc970977a86a7e0567a38388bb31ffbd5f795c30126372446789d"

  url "https://github.com/sturzael/speakhold/releases/download/v#{version}/Speakhold.app.zip"
  name "Speakhold"
  desc "Push-to-talk dictation for macOS with on-device Whisper"
  homepage "https://github.com/sturzael/speakhold"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Speakhold.app"

  zap trash: [
    "~/Library/Application Support/Speakhold",
    "~/Library/Preferences/co.wildinteractive.speakhold.plist",
  ]
end
