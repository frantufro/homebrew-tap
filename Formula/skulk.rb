class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.2.1/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "17842bc8997645c075e671de0f7bb75218cba0f0a8f706d51bea563dbd9ce02e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.2.1/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49a11e5149aa601a3ab5b5792c4c55873e70278667a3360ee8b141b746976aea"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.2.1/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a31073dab8e5c7582f0a8ed12496945916170b8b43ac0dc4a6a901579dbe9a56"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
