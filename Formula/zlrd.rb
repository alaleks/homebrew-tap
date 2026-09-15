class Zlrd < Formula
  desc "Fast log viewer: tail/grep alternative with filtering and coloring"
  homepage "https://github.com/alaleks/zlrd"
  version "1.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.3/zlrd-aarch64-macos.tar.gz"
      sha256 "8edd9b451ba7ef6f715d201730e02d6b750cd379f7c35aea2a9d344ede6f344b"
    end
    on_intel do
      url "https://github.com/alaleks/zlrd/releases/download/v1.3.3/zlrd-x86_64-macos.tar.gz"
      sha256 "b68dc71f028d57a3c356ab987bcf0d247f93e40e3a7a950648f2d6e8ce549658"
    end
  end

  def install
    bin.install "zlrd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zlrd --version")
  end
end
