class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.2/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "6d57b97f299ce8ca46c98e8996d989c99a144354f8c2c8fd4bc445b8e36f38ff"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.1.2/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "69c21d019d8a44790828428f20a2dfe6c9473ce28095102ab3ba5912279b2f46"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
