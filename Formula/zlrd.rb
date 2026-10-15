class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.4/zlrd-aarch64-macos.tar.gz"
      sha256 "e90480c9719fe1c6c23177964ec7830775bb48a14e3257bc5c0f7f789acd6a9e"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.4/zlrd-x86_64-macos.tar.gz"
      sha256 "3ababdde601b686f81f1bb717e69d60e1d609ed8f2fcae45fc58fba9eb19334d"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
