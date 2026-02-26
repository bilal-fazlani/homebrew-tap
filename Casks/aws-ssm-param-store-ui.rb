cask "aws-ssm-param-store-ui" do
  version "1.6"
  sha256 "c08bf242e8f9d45bac423ab4afda3d1e07167b670ec09aa0dc213cdef38b1932"

  url "https://github.com/bilal-fazlani/aws-ssm-param-store-ui/releases/download/v1.6/AWS.SSM.Param.Store.UI-1.6.dmg"
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