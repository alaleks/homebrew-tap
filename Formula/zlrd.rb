class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.0/zlrd-aarch64-macos.tar.gz"
      sha256 "f388b11213e3455cce46f9f7d0ae9d488d50fdb9602eef22437ede9e94f5320e"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.0/zlrd-x86_64-macos.tar.gz"
      sha256 "aa92f1f774671cc8ed662bce8cce077749862b691747088aaa62643c484e20b7"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
