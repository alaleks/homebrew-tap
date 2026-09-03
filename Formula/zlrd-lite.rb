class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.3/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "99f0da07edf95df2e5953bb52f0e3fce941a2d4e29d83cce39057272db17f937"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.3/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "1f7de1012f215c84a1e7a93bb9f8677061977942f7c3f0b41dc42daca92840fa"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
