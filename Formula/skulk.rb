class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.2.0/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "c3684061c314a351bc4d90b07a7010972b8998629cc65ad17f0f89295925112a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.2.0/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1a3e64752462fa0bc46aa895df14802ec735a52d6ffdadd7937f9f938921fcce"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.2.0/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3a0b7aacdaeae5f7ddc3c2c32625f13646053497e25820d57609977edd3e7cb"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
