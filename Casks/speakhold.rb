cask "speakhold" do
  version "0.2.3"
  sha256 "c5d55659bcd6c0aca6d7df340f3ae97091e14baeb2916d66a969e96e9b4f74be"

  url "https://github.com/sturzael/speakhold/releases/download/v#{version}/Speakhold.app.zip"
  name "Speakhold"
  desc "Push-to-talk dictation and meeting notes for macOS, on-device Whisper"
  homepage "https://github.com/sturzael/speakhold"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Speakhold.app"

  zap trash: [
    "~/Library/Application Support/Speakhold",
    "~/Library/Preferences/co.wildinteractive.speakhold.plist",
  ]
end
