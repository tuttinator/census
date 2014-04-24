require 'ruby-progressbar'
require 'open-uri'

module Downloader
  def self.fetch(url, options)
    options.assert_valid_keys(:to)

    progress_bar = nil

    open(options[:to], 'w') do |f|

      f.write open url,
        content_length_proc: Proc.new { |total|
          progress_bar = ProgressBar.create(title: 'Downloaded', total: total)
        },
        progress_proc: Proc.new { |step|
          progress_bar.progress = step
        }

    end
  end
end
