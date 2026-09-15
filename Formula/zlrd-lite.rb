class ZlrdLite < Formula
  desc "Fast log viewer (reader-only, lightweight build)"
  homepage "https://github.com/alaleks/zlrd"
  version "1.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.3/zlrd-lite-aarch64-macos.tar.gz"
      sha256 "b76ec5f8e29d1b46e9be3992c060f4aeb283acae79fef0633f4a4ceba5a54f79"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.3/zlrd-lite-x86_64-macos.tar.gz"
      sha256 "37890e3a1e4bc718198380197690dded980f3f6afe5585f5aa36d3df1b7c2e12"
    end
  end

  def install
    bin.install "zlrd-lite"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd-lite --version")
  end
end
