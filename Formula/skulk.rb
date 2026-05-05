class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.4.2/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "c087690cb33f652267f9fb7c7612b20af191dd9abaa18f2abede77d2717e3bca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.4.2/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6018fde1da31b3094ea643b0cf4ca6735a9f02c85f5e259ac486079505d9c446"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.4.2/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0a919aad4f29723b153db61585ed43805a4bb154a32a37c7b4247b1e9fc14f3"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
