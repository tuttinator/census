require 'ruby-progressbar'
require 'open-uri'

module Downloader
  def self.fetch(url, options)
    options.assert_valid_keys(:to)

    progress_bar = nil

    content_length_proc = Proc.new do |total|
      progress_bar = ProgressBar.create(format: '%E %bᗧ%i %p%% %t',
                                        progress_mark: ' ',
                                        remainder_mark: '･',
                                        starting_at: 10,
                                        title: 'Downloaded',
                                        total: total)
    end

    progress_proc = Proc.new do |step|
      progress_bar.progress = step
    end

    file_buffer = open(url, content_length_proc: content_length_proc,
                       progress_proc: progress_proc)

    open(options[:to], 'wb') do |local_file|
      local_file << file_buffer.read
    end
  end
end
