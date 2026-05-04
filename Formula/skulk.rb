class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.4.1/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "b5aae51e96d42ffcd55a86eabf2ee7b8b2593ab366d7af20b4185c80098c9da3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.4.1/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75adc628f79a7b19b5dec5a1097ce019f706e9b89200da859af7be237275dc7e"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.4.1/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1749154cedcdb82635d79e36c16c940a4617ad70b09c1d718a36effd0edf278"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
