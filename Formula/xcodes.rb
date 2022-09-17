class Xcodes < Formula
  desc "Install and switch between multiple versions of Xcode"
  homepage "https://github.com/RobotsAndPencils/xcodes"
  url "https://github.com/RobotsAndPencils/xcodes.git", tag: "0.20.0"
  head "https://github.com/RobotsAndPencils/xcodes.git", branch: "main"

  bottle do
    root_url 'https://github.com/RobotsAndPencils/xcodes/releases/download/0.20.0'
    sha256 cellar: :any_skip_relocation, mojave: "acd0717e5083634c472d17d7b041265f34b197164ecfcf513b812d77ff978c6d"
  end
  
  depends_on "aria2" => :recommended

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
