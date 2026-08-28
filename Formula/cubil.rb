class Cubil < Formula
  desc "Markdown-based task management CLI — companion to Skulk"
  homepage "https://github.com/frantufro/cubil"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.5/cubil-aarch64-apple-darwin.tar.gz"
      sha256 "1d8b19171f9d6e50036c742c383c0f56721616d13f3dc56c01fc5731984feb29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.5/cubil-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c501ec9a5edcf043f9e6ac991b6ee684ba536edc75ed99e061f4b9533fae2a23"
    end
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.5/cubil-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54a93c16db0a6b2a4bb65d3a0f094b38761674af1fe3914983d2960ffd081db4"
    end
  end

  def install
    bin.install "cubil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cubil --version")
  end
end
