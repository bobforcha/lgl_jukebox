module DownloadHelpers
  TIMEOUT = 20
  PATH = "#{Dir.pwd}/tmp/downloads"

  extend self

  def make_download_directory
    FileUtils.mkdir_p(PATH)
  end

  def downloads
    Dir["#{PATH}/*"]
  end

  def download
    downloads.first
  end

  def download_content
    wait_for_download
    File.read(download)
  end

  def wait_for_download
    Timeout.timeout(TIMEOUT) do
      sleep 0.1 until downloaded?
    end
  end

  def downloaded?
    !downloading? && downloads.any?
  end

  def downloading?
    donwloads.grep(/\.crdownload$/).any?
  end

  def clear_downloads
    FileUtils.rm_f(downloads)
  end
end

