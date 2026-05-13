class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.5.0/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "7df79bc60ed44a646ae18ffa24a788672977afff6d5017449cf5a6981f5f1b05"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.5.0/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e443e68750c052321dfcb53160dbc037c325c7e1ffa6e858e1aa41a6bc5c0e4e"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.5.0/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a101f178e44ab7ec1a22350d573d64ab7f3b4962ebd43839d950117644ffee39"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
