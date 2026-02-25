cask "aws-ssm-param-store-ui" do
  version "1.0"
  sha256 "9fc08287fc1d9165ef569a23b693bad1aac5307381d3085094506d95b1c9e13b"

  url "https://github.com/bilal-fazlani/aws-ssm-param-store-ui/releases/download/v#{version}/AWS.SSM.Param.Store.UI-#{version}.dmg"
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