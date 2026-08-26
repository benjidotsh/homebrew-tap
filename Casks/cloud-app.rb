cask "cloud-app" do
  version "0.1.4"
  sha256 "192b0e45caaf7046da291e105ebdf0f02c0d32c1e7e67d6d6659bd3f0de77412"

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
