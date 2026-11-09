class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.7.2/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "1aa1843d840b662b2e2cd74f146bd8a72b7ff8c999372578206f6a76bef0fb0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.7.2/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d264e4d07b986aa85825ff3e2084b5a52186dd4a35908baa6f0f52dc108ed43d"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.7.2/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "463fe7ad3108c9ed61ee3f9cdd0de2b5216e84a63e33cbe20557ff7380645256"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
