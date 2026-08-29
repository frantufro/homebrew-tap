class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.7.1/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "a87e31f3904db53a3d2068f46848c8bc48b3cd3540eacb7ce37d127b07e5996f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.7.1/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "675003ffd569879f174976c8a4abd5c651a168d033ea19edd213e91d54af253a"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.7.1/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60c2cee28b7cc8b0c89fe90bacb09abbe5632571a449a5caae81b7e90d3c0718"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
