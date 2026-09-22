cask "logsquirl" do
  version "26.07.0"
  sha256 "f6160cfa0e996de319113f9159d1149611b62d3672cec6861ced64cdfce896aa"

  url "https://github.com/64x-lunicorn/LogSquirl/releases/download/v#{version}/logsquirl-mac-arm64.dmg"
  name "LogSquirl"
  desc "Fast, smart log file explorer"
  homepage "https://logsquirl.lunicorn-lab.de/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "logsquirl.app"

  zap trash: [
    "~/Library/Application Support/logsquirl",
    "~/Library/Caches/logsquirl",
    "~/Library/Preferences/com.logsquirl.logsquirl.plist",
    "~/Library/Preferences/com.logsquirl.logsquirl_session.plist",
    "~/Library/Preferences/io.github.logsquirl.logsquirl.plist",
    "~/Library/Preferences/io.github.logsquirl.plist",
    "~/Library/Preferences/logsquirl",
  ]
end
