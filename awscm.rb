# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Awscm < Formula
  desc "Manage AWS Credentials"
  homepage ""
  url "https://github.com/jamesroutley/awscm/releases/download/v2.0.0/awscm-macos-x64.tgz"
  sha256 "a5c6fa1d223e2157251431dc191ade758194dea9ea883c95e227401f9d5f90b6"

  depends_on :arch => :x86_64

  def install
    bin.install 'awscm'
    # ENV.deparallelize  # if your formula fails when building in parallel

  end

  test do
    system "#{bin}/awscm"
  end
end
