class Xcodes < Formula
  desc "Manage the Xcodes installed on your Mac"
  homepage "https://github.com/RobotsAndPencils/xcodes"
  url "https://github.com/RobotsAndPencils/xcodes.git", tag: "0.7.1"
  head "https://github.com/RobotsAndPencils/xcodes.git"

  bottle do
    root_url 'https://github.com/RobotsAndPencils/xcodes/releases/download/0.7.1'
    cellar :any_skip_relocation
    sha256 "506fcc0f8cf9105a697074c171a7475072eabda29ecb579128976972f65de93e" => :mojave
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
