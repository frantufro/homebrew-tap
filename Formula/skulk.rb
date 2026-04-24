class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.3.0/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "6b2a23227894ade10b33c76ab473a7bfed5684eda7521a0bdfb4a95447c92f42"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.3.0/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4cf02b97724bd66f922eec5569e590b3eb097175ee1a1a85ba523b16365f9b17"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.3.0/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b5185ff6a0326c1a105b333efe7ee2528db24b7644d53ef71efb2aaea94e950"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
