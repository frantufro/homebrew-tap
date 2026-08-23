class Husmo < Formula
  desc "Local-first, git-backed document/link database with a Rust MCP server"
  homepage "https://github.com/frantufro/husmo"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.0/husmo-aarch64-apple-darwin.tar.gz"
      sha256 "e6a5540b1e073107c38ac8aa818a31475427f547072891ca673895513e013b71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.0/husmo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c58176cb952216112bcc0963b6f9711324ac3cd25e9b4904e29eccf721e47ad"
    end
    on_arm do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.0/husmo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ccbc9b5aed554bafdae3b82f5997b3ebe90ef44012e0cb745ecfe018f088f874"
    end
  end

  def install
    bin.install "husmo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/husmo --version")
  end
end
