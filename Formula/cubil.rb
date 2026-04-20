class Cubil < Formula
  desc "Markdown-based task management CLI — companion to Skulk"
  homepage "https://github.com/frantufro/cubil"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.0/cubil-aarch64-apple-darwin.tar.gz"
      sha256 "568108488fd8ba6f3aca0a6b95e008ab9fb1964abe5acfa706be432f8b7c6bc0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.0/cubil-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a82af0c4efc9422d530457cc3c61f5542db6a1578e4e73893da4f027767380c7"
    end
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.0/cubil-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bfc438f0ba7302cf16df974e52fac20e62fd9978107f9f3db5f2e29f335571b2"
    end
  end

  def install
    bin.install "cubil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cubil --version")
  end
end
