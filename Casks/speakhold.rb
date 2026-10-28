cask "speakhold" do
  version "0.2.1"
  sha256 "95d460ceda411d691defcb45f2202e954e695a1a5ad2553121b1bf9ec4888c2a"

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
