class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.8.0/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "d8754c8353420e6f4139dfbfea7bcec34f58ce2f4330d6cf5b486ca2df4f7383"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.8.0/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee32796d9e44029f1935debc5adc9d8a1e5677a19e0f4a23847641bb18d46fd4"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.8.0/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1afac1ac5b6bf40762276858dd1bf46e091bb9465cc5f2068cb9761bbe090fc6"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
