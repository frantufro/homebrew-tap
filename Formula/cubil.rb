class Cubil < Formula
  desc "Markdown-based task management CLI — companion to Skulk"
  homepage "https://github.com/frantufro/cubil"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.2/cubil-aarch64-apple-darwin.tar.gz"
      sha256 "6f849e95288af186fdde2ae5e521e09f1d67473cd14221afd77012c1e7e1b1d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.2/cubil-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d7f98faee80fe658d9d761d1f0ff9f2bf2de860dc070513111a3ce118788c37"
    end
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.2/cubil-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51569e0a035a04884207f2eaddfa44570117ea45e9401e534134bbb3933f9d6d"
    end
  end

  def install
    bin.install "cubil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cubil --version")
  end
end
