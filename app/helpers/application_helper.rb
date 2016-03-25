module ApplicationHelper
  include Twitter::Autolink

  def screen_name_link(screen_name, options={})
    link_to "@#{screen_name}", "https://twitter.com/#{screen_name}", options.merge(target: :blank)
  end

  def status_url(screen_name, tweet_id)
    "https://twitter.com/#{screen_name}/status/#{tweet_id}"
  end

  def user_tooltip_options(user)
    {
      "data-toggle": "tooltip",
      "data-placement": "bottom",
      "data-html": true,
      title: build_user_synopsis(user)
    }
  end

  private

  def build_user_synopsis(user)
    "<table>" \
      "<tr><td class='text-right'>#{t("th.tweets")}&nbsp;:&nbsp;</td><td class='text-left'>#{number_with_delimiter user["statuses_count"]}</td></tr>" \
      "<tr><td class='text-right'>#{t("th.following")}&nbsp;:&nbsp;</td><td class='text-left'>#{number_with_delimiter user["friends_count"]}</td></tr>" \
      "<tr><td class='text-right'>#{t("th.followers")}&nbsp;:&nbsp;</td><td class='text-left'>#{number_with_delimiter user["followers_count"]}</td></tr>" \
      "<tr><td class='text-right'>#{t("th.favorites")}&nbsp;:&nbsp;</td><td class='text-left'>#{number_with_delimiter user["favourites_count"]}</td></tr>" \
    "</table>"
  end
end
