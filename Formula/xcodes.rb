class Xcodes < Formula
  desc "Manage the Xcodes installed on your Mac"
  homepage "https://github.com/RobotsAndPencils/xcodes"
  url "https://github.com/RobotsAndPencils/xcodes.git", tag: "0.7.0"
  head "https://github.com/RobotsAndPencils/xcodes.git"

  bottle do
    root_url 'https://github.com/RobotsAndPencils/xcodes/releases/download/0.7.0'
    cellar :any_skip_relocation
    sha256 "3d5bbbe58f92f375ef7065fbfeafe85c008d27b9ac1ef20e98bcf5b6b311ba97" => :mojave
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
