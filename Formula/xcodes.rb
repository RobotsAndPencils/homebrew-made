class Xcodes < Formula
  desc "Install and switch between multiple versions of Xcode"
  homepage "https://github.com/RobotsAndPencils/xcodes"
  url "https://github.com/RobotsAndPencils/xcodes.git", tag: "0.18.0"
  head "https://github.com/RobotsAndPencils/xcodes.git"

  bottle do
    root_url 'https://github.com/RobotsAndPencils/xcodes/releases/download/0.18.0'
    sha256 cellar: :any_skip_relocation, mojave: "5daf2e30085ce4da11b9c06a054a780149513ba0c052868c927264ace374ae68"
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
