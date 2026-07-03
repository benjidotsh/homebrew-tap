cask "cloud-app" do
  version "0.1.1"
  sha256 "062c526bd140c8ff938fd12125085e1a9a72b2b4dd88c4f301ec90760657618f"

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
