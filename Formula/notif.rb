class Notif < Formula
  desc "Minimal macOS Notification Center controller for keyboard shortcuts"
  homepage "https://github.com/zukash/notif"
  url "https://github.com/zukash/notif/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "353062e4eb4a51d4c1fa5571fb6a0a54ab9e4a51b9dffff0306c9dd16c0ea442"
  license "MIT"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/notif", "--version"
  end
end
