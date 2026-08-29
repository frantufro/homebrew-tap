class Cubil < Formula
  desc "Markdown-based task management CLI — companion to Skulk"
  homepage "https://github.com/frantufro/cubil"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.6/cubil-aarch64-apple-darwin.tar.gz"
      sha256 "ff73a3dee5ca81361e14ab7464f69d81f39fa06979e4b84eea6cecbec423b37e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.6/cubil-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "550eadc08d67ad5e54637a48270c8baa74e8c13c45dc84a822b4857109e85ffa"
    end
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.6/cubil-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f59deef24d089105d0590f10fa918c05e0a3195264ae48706509c71c13b33a9f"
    end
  end

  def install
    bin.install "cubil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cubil --version")
  end
end
