class Husmo < Formula
  desc "Local-first, git-backed document/link database with a Rust MCP server"
  homepage "https://github.com/frantufro/husmo"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.2/husmo-aarch64-apple-darwin.tar.gz"
      sha256 "aca40952d3f432ab906b04c3a7fb0e6a05d5c6a6fc8e5e12a4e9c772a9e9adf8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.2/husmo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cde9c5cffdad78537b9e5adacc081a732621ca7cacd48db4352c7a23ebfd4b2a"
    end
    on_arm do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.2/husmo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4011fac6cfe03cf45331982cc98d05477aab95b8ec03007035e69911fbe2925d"
    end
  end

  def install
    bin.install "husmo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/husmo --version")
  end
end
