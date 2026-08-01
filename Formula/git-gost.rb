class GitGost < Formula
  desc "Git resilient networking client"
  homepage "https://github.com/livrasand/gitGost"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/livrasand/gitGost/releases/download/gren/v0.1.0/git-gost-darwin-arm64"
      sha256 "68214d7285f7f1ccb6c05c722ed4748bbb3a3cac1449a57e64306b8b07cbb951"
    else
      url "https://github.com/livrasand/gitGost/releases/download/gren/v0.1.0/git-gost-darwin-amd64"
      sha256 "88a6820984f855c948ccac95d7aefd82c61c5f3fc44e091d86f0a1f0844a47e5"
    end
  end

  def install
    bin.install Dir["git-gost-*"].first => "git-gost"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-gost --version")
  end
end
