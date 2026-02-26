cask "aws-ssm-param-store-ui" do
  version "1.4"
  sha256 "9300eea1784622ca4e7ce4be781905956db3f0faa532f9f0493547e901415ff9"

  url "https://github.com/bilal-fazlani/aws-ssm-param-store-ui/releases/download/v1.4/AWS.SSM.Param.Store.UI-1.4.dmg"
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