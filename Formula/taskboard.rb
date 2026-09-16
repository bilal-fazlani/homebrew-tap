class Taskboard < Formula
  desc "Dependency graph, Kanban board, CLI and MCP server for local projects"
  homepage "https://github.com/bilal-fazlani/taskboard"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bilal-fazlani/taskboard/releases/download/v0.1.0/taskboard-darwin-arm64.tar.gz"
      sha256 "8ec26f3edd395d7b6e0300e42f2a068188899f19e8480084eab09af7f5a66d23"
    end
    on_intel do
      url "https://github.com/bilal-fazlani/taskboard/releases/download/v0.1.0/taskboard-darwin-amd64.tar.gz"
      sha256 "d18fce422fc637c5bf225690aea9a352148599311d63fe031e64de767897f6c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bilal-fazlani/taskboard/releases/download/v0.1.0/taskboard-linux-arm64.tar.gz"
      sha256 "362f0d95c116f3a1ac5d2d5588a7b1d11ca42332569ccedff1ef89e80fb8608e"
    end
    on_intel do
      url "https://github.com/bilal-fazlani/taskboard/releases/download/v0.1.0/taskboard-linux-amd64.tar.gz"
      sha256 "a9463ea32cd742b484b7196281b86b47446f09868047b6f11b99c07c813ce5fc"
    end
  end

  def install
    # Each tarball holds one binary, named like the tarball it came in.
    bin.install File.basename(stable.url, ".tar.gz") => "taskboard"
  end

  test do
    assert_match "taskboard", shell_output("#{bin}/taskboard --help")
  end
end
