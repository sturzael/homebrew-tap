cask "speakhold" do
  version "0.2.2"
  sha256 "d38bf43813d14a858e263a15674cc7cd6880ee69a895a365b8e455a00689e790"

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
