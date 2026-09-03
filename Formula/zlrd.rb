class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.2.0/zlrd-aarch64-macos.tar.gz"
      sha256 "8044447dfc7232ed8a258e9aeba68a2c181df6b11ba1fcb4b8acf24456c1f636"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.2.0/zlrd-x86_64-macos.tar.gz"
      sha256 "ef20f878059ebaa5cf24815914509194c5f300e50c94dc22b391053273ec60a3"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
