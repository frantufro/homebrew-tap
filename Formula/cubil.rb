class Cubil < Formula
  desc "Markdown-based task management CLI — companion to Skulk"
  homepage "https://github.com/frantufro/cubil"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.1/cubil-aarch64-apple-darwin.tar.gz"
      sha256 "f0f24fabeef29556f07a75c7fdc2d2844d39eaea218fad3df52c941cf4490705"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.1/cubil-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3fdbdd6cae4ad1dcd7059ea145d25f7d2dd68d6a349b89ba6c7a490524740bc"
    end
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.1/cubil-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61362fabf8e4a92d16c0c6e9b9e8e515b3764b3b7183097e17b001a4de0971f6"
    end
  end

  def install
    bin.install "cubil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cubil --version")
  end
end
