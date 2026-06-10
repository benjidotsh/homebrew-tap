cask "cloud-app" do
  version "0.1.0"
  sha256 "bda9431869c47e8a961000e23c824437051d21c0e962fb644e1141a2578de116"

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
