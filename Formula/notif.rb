class Notif < Formula
  desc "Minimal macOS Notification Center controller for keyboard shortcuts"
  homepage "https://github.com/zukash/notif"
  url "https://github.com/zukash/notif/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "8d96139c5b04165c7aa7a39e4b07659a219bf8b7e2a802fe1199558a899769f9"
  license "MIT"

  def install
    bin.install "notif"
    bin.install "notif.applescript"
  end

  test do
    system "#{bin}/notif", "--help"
  end
end
