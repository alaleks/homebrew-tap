class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.0.2/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "542afd61305e58ae58778061ee9b9cc1c585f501ef8263e3f18087b3274e3679"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.0.2/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "bb7fe6e36542ce5b09e7db61a333a82be094bb9dcf917e92c8ffbe8f3b62ca8f"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
