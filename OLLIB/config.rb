activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  set :relative_links, true
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

activate :protect_emails

activate :sitemap, hostname: data.settings.site.url


# activate :google_analytics do |ga|
#     ga.tracking_id = data.settings.google_analytics.tracking_code
#     ga.anonymize_ip = true
#     ga.debug = false
#     ga.development = false
#     ga.minify = true
# end
