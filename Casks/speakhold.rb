cask "speakhold" do
  version "0.3.1"
  sha256 "591b8f2b20c500f5a388e6e93be106c542ee97c050e4d5b63fa7e45cc6cc7905"

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
