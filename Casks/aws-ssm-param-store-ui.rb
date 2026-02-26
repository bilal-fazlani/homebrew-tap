cask "aws-ssm-param-store-ui" do
  version "1.5"
  sha256 "78b0258a9ca8524f5a962c4db44610fd1e047e28e787ad4e4d82cea72aad7ff7"

  url "https://github.com/bilal-fazlani/aws-ssm-param-store-ui/releases/download/v1.5/AWS.SSM.Param.Store.UI-1.5.dmg"
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