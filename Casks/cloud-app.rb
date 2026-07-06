cask "cloud-app" do
  version "0.1.3"
  sha256 "c1c80a14f4343720a8c5aef8750b51c68a8435c278ff4f81b6c6acb211b98042"

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
