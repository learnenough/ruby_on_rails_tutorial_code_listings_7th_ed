source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem "rails",                      "7.0.2.3"
gem "image_processing",           "1.12.2"
gem "active_storage_validations", "0.9.7"
.
.
.
group :production do
  gem "pg",         "1.3.3"
  gem "aws-sdk-s3", "1.113.0", require: false
end
.
.
.
