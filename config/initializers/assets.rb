# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( login.css )
Rails.application.config.assets.precompile += %w( signup.css )
Rails.application.config.assets.precompile += %w( applicant_home.css )
Rails.application.config.assets.precompile += %w( applicant_show_job.css )
Rails.application.config.assets.precompile += %w( applicant_apply_job.css )
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
