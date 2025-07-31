// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";

import * as bootstrap from "bootstrap"

import "controllers"
import "custom/image_upload"

// Make bootstrap available globally
window.bootstrap = bootstrap

