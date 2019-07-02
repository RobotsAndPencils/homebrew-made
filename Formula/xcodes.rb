class Xcodes < Formula
  desc "Manage the Xcodes installed on your Mac"
  homepage "https://github.com/RobotsAndPencils/xcodes"
  url "https://github.com/RobotsAndPencils/xcodes.git", tag: "0.6.0"
  head "https://github.com/RobotsAndPencils/xcodes.git"

  bottle do
    root_url 'https://github.com/RobotsAndPencils/xcodes/releases/download/0.6.0'
    cellar :any_skip_relocation
    sha256 "f05d9bae064a9dc63488c07ce136acb592d1f252bec2604522231c069fef93b8" => :mojave
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
