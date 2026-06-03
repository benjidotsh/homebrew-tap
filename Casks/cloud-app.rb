cask "cloud-app" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/benjidotsh/cloud.app/releases/download/v#{version}/Cloud-#{version}.dmg"
  name "Cloud.app"
  desc "Menu bar app for switching between AWS SSO sessions"
  homepage "https://github.com/benjidotsh/cloud.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Cloud.app"

  zap trash: [
    "~/Library/Preferences/sh.benji.CloudApp.plist",
    "~/Library/Application Support/sh.benji.CloudApp",
    "~/Library/Caches/sh.benji.CloudApp",
  ]
end
