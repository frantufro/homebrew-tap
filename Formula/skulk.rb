class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.4.0/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "4316446066fdbba8b6f751db0538d02e18a15f43db80cb04e1e611b384346329"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.4.0/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a1eb40cd1f9bc8f829993f7af048de462d34f185b72870b105d0aba08b0a0e3"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.4.0/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "475c6e655e887f982ad38846e0123348914eb1911b4d2984581874c17d05487c"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
