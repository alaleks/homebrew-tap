class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.2/zlrd-aarch64-macos.tar.gz"
      sha256 "9c9494e84cbf3d2579245703589d54b9dba74810ae3160ac985db22023e93801"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.2/zlrd-x86_64-macos.tar.gz"
      sha256 "e65d9864b86d176f1aa9242feea29b9d117dc6d75ff88499ad09e2a8cd1f3b98"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
