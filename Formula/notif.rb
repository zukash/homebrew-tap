class Notif < Formula
  desc "Minimal macOS Notification Center controller for keyboard shortcuts"
  homepage "https://github.com/zukash/notif"
  url "https://github.com/zukash/notif/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "6cdfeed8d020e3ad2944659b5da60d2348936cbb2bac99329ac5288343d2a890"
  license "MIT"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/notif", "--version"
  end
end
