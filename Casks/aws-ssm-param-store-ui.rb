cask "aws-ssm-param-store-ui" do
  version "2.1"
  sha256 "85888681aed4bb12a0fed3ce3d0a3d37c09ba2a6cef2d41b97273e31c46c9099"

  url "https://github.com/bilal-fazlani/aws-ssm-param-store-ui/releases/download/v2.1/AWS.SSM.Param.Store.UI-2.1.dmg"
  name "AWS SSM Param Store UI"
  desc "macOS GUI for browsing and editing AWS SSM Parameter Store"
  homepage "https://github.com/bilal-fazlani/aws-ssm-param-store-ui"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"  # macOS 26+

  app "AWSSSMParamStoreUI.app"

  zap trash: [
    "~/Library/Application Support/com.bilal-fazlani.aws-ssm-param-store-ui",
    "~/Library/Caches/com.bilal-fazlani.aws-ssm-param-store-ui",
    "~/Library/Preferences/com.bilal-fazlani.aws-ssm-param-store-ui.plist",
  ]
end