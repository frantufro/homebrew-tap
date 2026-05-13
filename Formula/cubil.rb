class Cubil < Formula
  desc "Markdown-based task management CLI — companion to Skulk"
  homepage "https://github.com/frantufro/cubil"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.3/cubil-aarch64-apple-darwin.tar.gz"
      sha256 "9baf39e723c5216d9d9b6d6088538c1232073159e5c486615aa4cbbd14875e99"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.3/cubil-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "633c51fce527c6c32583e751e91bbe17510856d8cdba01a49723d4573a4de6c6"
    end
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.3/cubil-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6db80ba0059bf3ec63238fe44660232caa327c9fa289365a7a4bf554876ed987"
    end
  end

  def install
    bin.install "cubil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cubil --version")
  end
end
