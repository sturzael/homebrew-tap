cask "hushtype" do
  version "0.1.0"
  sha256 "aef4aa32543e03efb376a23330ae12ca97da6228f2699a728b6c67697a36be9e"

  url "https://github.com/sturzael/hushtype/releases/download/v#{version}/Hushtype.app.zip"
  name "Hushtype"
  desc "Push-to-talk dictation for macOS with on-device Whisper"
  homepage "https://github.com/sturzael/hushtype"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Hushtype.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Hushtype.app"], sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Hushtype",
    "~/Library/Preferences/co.wildinteractive.hushtype.plist",
  ]
end
