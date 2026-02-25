cask "aws-ssm-param-store-ui" do
  version "1.3"
  sha256 "652098c23ef7ac890800f18a08efecd952c0a41d724a2ea41ec41361ea8f293e"

  url "https://github.com/bilal-fazlani/aws-ssm-param-store-ui/releases/download/v1.3/AWS.SSM.Param.Store.UI-1.3.dmg"
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