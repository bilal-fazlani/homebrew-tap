cask "aws-ssm-param-store-ui" do
  version "2.0"
  sha256 "33d63a59be81e2807dae13174a7c3f3600c371cfb82d8455baf4ccf4ad88a640"

  url "https://github.com/bilal-fazlani/aws-ssm-param-store-ui/releases/download/v2.0/AWS.SSM.Param.Store.UI-2.0.dmg"
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