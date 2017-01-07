# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.example.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host

  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  # match '/ask-more-information', to: => redirect('/process')
  # match '/buildinginfrance.html', to: => redirect('/process')
  # match '/users/dreamstones', to: => redirect('/process')
  # match '/contact.html', to: => redirect('/process')
  # match '/building-projects.html', to: => redirect('/process')
  # match '/projects.html', to: => redirect('/process')
  # match '/legal-mentions.html', to: => redirect('/process')
  # match '/italy.html', to: => redirect('/process')
  # match '/builder-brokers-faqs.html', to: => redirect('/process')
  # match '/about.html', to: => redirect('/process')
  # match '/contact-us.html', to: => redirect('/process')
  # match '/homebuilding.html', to: => redirect('/process')
  # match '/user/logout', to: => redirect('/process')
  # match '/evaluation.html', to: => redirect('/process')
  # match '/dreamstones-services.html', to: => redirect('/process')
  # match '/renovation.html-0', to: => redirect('/process')
  # match '/renovation.html', to: => redirect('/process')
  # match '/faqs.html', to: => redirect('/process')
  # match '/extensionveranda.html', to: => redirect('/process')
  # match '/extension.html', to: => redirect('/process')
  # match '/united-kingdom.html', to: => redirect('/process')
  # match '/spain.html', to: => redirect('/process')
  # match '/design-build-process.html', to: => redirect('/process')
  # match '/design.html', to: => redirect('/process')
  # match '/preparation.html', to: => redirect('/process')
  # match '/new-build.html', to: => redirect('/process')
  # match '/portugal.html', to: => redirect('/process')
end
