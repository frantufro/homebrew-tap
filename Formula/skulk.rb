class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.7.0/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "0cea511c1754a1137acec0d5a9496790fd7d0cc6ab7a05be54eaf44e8ebc0d58"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.7.0/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f0f0561899eb3de67ee5675420936a0be13b97c1516582df89881b5a8a1f40d"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.7.0/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d1e3d27bd64f5d6d1cdad8b896c4dd3eafa99e4aa4ab4402a09ac5c0724bf20"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
