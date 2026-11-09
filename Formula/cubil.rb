class Cubil < Formula
  desc "Markdown-based task management CLI — companion to Skulk"
  homepage "https://github.com/frantufro/cubil"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.7/cubil-aarch64-apple-darwin.tar.gz"
      sha256 "ed86de7ba401e92fe9afc2ed2d06e8dae5a297f39cb619fee54dd241387bffb8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.7/cubil-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "132311b3624bc868ab3db6b3e02f22f97ee0a9b22d8750d25fae86392c12fd83"
    end
    on_arm do
      url "https://github.com/frantufro/cubil/releases/download/v0.1.7/cubil-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "189424df397c79e57348d07451cfc838c317a1ae903019d4d408ef90d24e0639"
    end
  end

  def install
    bin.install "cubil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cubil --version")
  end
end
