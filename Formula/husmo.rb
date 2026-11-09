class Husmo < Formula
  desc "Local-first, git-backed document/link database with a Rust MCP server"
  homepage "https://github.com/frantufro/husmo"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.3/husmo-aarch64-apple-darwin.tar.gz"
      sha256 "301c50c6a16e6f1baeb4999f3dc7cd21699974794b55605fec1c774f84e5c196"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.3/husmo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4f3f1af23a78252b752129c26cba93db0a9e988e43b3d5f4e39489475610403"
    end
    on_arm do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.3/husmo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48a7b83a996fad01c78ec459dcca1d3c923c1886d5812b570696592f61a88749"
    end
  end

  def install
    bin.install "husmo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/husmo --version")
  end
end
