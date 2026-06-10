class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "0.3.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v0.3.42/zlrd-aarch64-macos.tar.gz"
      sha256 "71e907b34e7c7ae452f5bf07a96a623e394002e52abb813c42a392aafc72ba79"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v0.3.42/zlrd-x86_64-macos.tar.gz"
      sha256 "a9fc96cb1bcd99471773b5148efcfda1f49376e3b6c2b6cd2530c1523f237647"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
