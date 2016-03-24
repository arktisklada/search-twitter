module ApplicationHelper
  include Twitter::Autolink

  def screen_name_link(screen_name)
    link_to "@#{screen_name}", "https://twitter.com/#{screen_name}", target: :blank
  end

  def status_url(screen_name, tweet_id)
    "https://twitter.com/#{screen_name}/status/#{tweet_id}"
  end
end
