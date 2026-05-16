class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.5.1/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "ae2c3d55546072560f3d29e27f03e8729b98d431ec46b6d8c2b761329516e988"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.5.1/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b93281b4923b6d8a9e2cfca73fbc315131273daa56241b6a48928430f297a4bf"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.5.1/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6681d84777c741a2d2bf8e478c2359130dc54c2cc99bc02f492e804090f2c1f7"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
