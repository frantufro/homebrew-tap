class Husmo < Formula
  desc "Local-first, git-backed document/link database with a Rust MCP server"
  homepage "https://github.com/frantufro/husmo"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.1/husmo-aarch64-apple-darwin.tar.gz"
      sha256 "716d03e02bf0867865065c04b2dfd1d5ad4477745d0e1890c45168db10c01d11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.1/husmo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8176d82c13b3dcaae74e2a6708c5e5a557e5649fef7fde5686df4fe814f41a0c"
    end
    on_arm do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.1/husmo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "379ee8e5123bb9ade4976a26d38359959946eeb8a6bfb687801b67337c0fcdb9"
    end
  end

  def install
    bin.install "husmo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/husmo --version")
  end
end
