class Skulk < Formula
  desc "Manage remote Claude Code agents over SSH with tmux and git worktrees"
  homepage "https://github.com/frantufro/skulk"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.6.0/skulk-aarch64-apple-darwin.tar.gz"
      sha256 "37b37065d68eba46e3657487a262193dbe44fe07f4b686501e85ff1e4ab21755"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/skulk/releases/download/v0.6.0/skulk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e9ab4aa9e22cafd36144529df44f1938f9b6078fba27d9e3103ec6d11028a51"
    end
    on_arm do
      url "https://github.com/frantufro/skulk/releases/download/v0.6.0/skulk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65a2fad15eb41cae0076e3edab17d59cd2cc99408e28be543165d8f3ae66c012"
    end
  end

  def install
    bin.install "skulk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skulk --version")
  end
end
