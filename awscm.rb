# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Awscm < Formula
  desc "Manage AWS Credentials"
  homepage "https://github.com/jamesroutley/awscm"
  url "https://github.com/jamesroutley/awscm/releases/download/v2.1.0/awscm-macos-x64-2-1-0.tgz"
  sha256 "1860e06baa1ccfe8f1eb7799ac5bfe1c01f22d877618c8f932db6cb9bad6d4aa"

  depends_on :arch => :x86_64

  def install
    bin.install 'awscm'
    # ENV.deparallelize  # if your formula fails when building in parallel

  end

  test do
    system "#{bin}/awscm"
  end
end
