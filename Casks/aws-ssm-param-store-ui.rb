cask "aws-ssm-param-store-ui" do
  version "1.0"
  sha256 "df41c0f785f39c084995eb87f0e4ff4104deb5544629a4a2e02f8de7fb487433"

  url "https://github.com/bilal-fazlani/aws-ssm-param-store-ui/releases/download/v#{version}/AWSSSMParamStoreUI-#{version}.dmg"
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