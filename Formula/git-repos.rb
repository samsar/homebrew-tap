class GitRepos < Formula
  desc "Scan a directory of git repos and show status at a glance"
  homepage "https://github.com/samsar/git-repos"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/samsar/git-repos/releases/download/v1.0.0/git-repos_darwin_amd64.tar.gz"
      sha256 "1f8228613c2eb83817b294fbc4b47fc6423ce6f1c786161b64b2c610e08868eb"
    end
    on_arm do
      url "https://github.com/samsar/git-repos/releases/download/v1.0.0/git-repos_darwin_arm64.tar.gz"
      sha256 "588e2b17dbe7886ec1295715068af78e8d8bb3ccc67582100928eb7495b0d876"
    end
  end

  def install
    bin.install "git-repos"
  end

  test do
    system "#{bin}/git-repos", "version"
  end
end
