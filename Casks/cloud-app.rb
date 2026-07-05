cask "cloud-app" do
  version "0.1.2"
  sha256 "0c80dcd6f7f1efa3feaca523657e83bfff4a394f0dffc6320eed51019efc12ad"

  url "https://dl.trycloud.app/CloudApp-#{version}.dmg",
      verified: "dl.trycloud.app/"
  name "Cloud.app"
  desc "Menu bar app for switching between AWS SSO sessions"
  homepage "https://github.com/benjidotsh/cloud.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Cloud.app"

  zap trash: [
    "~/Library/Application Support/sh.benji.CloudApp",
    "~/Library/Caches/sh.benji.CloudApp",
    "~/Library/Preferences/sh.benji.CloudApp.plist",
  ]
end
