require './show-project-details'
require './show-roi'
require './auto-choose-penguin-tool'
require './limit-marks'
require './show-counts'
require './attribute-background-image'
require './confirm-button-label'
require './task-defaults'

GoogleAnalytics = require 'zooniverse/lib/google-analytics'
analytics = new GoogleAnalytics
  account: 'UA-1224199-57'
  domain: 'www.penguinwatch.org'

# ClassifyPage = require 'zooniverse-readymade/lib/classify-page'
# ClassifyPage::template = require './templates/classify-page'

SubjectViewer = require 'zooniverse-readymade/lib/subject-viewer'
SubjectViewer::template = require './templates/subject-viewer'

help = document.querySelector('input[name=help]')

classify_page.fieldGuideContainer.attr 'aria-hidden', !help.checked

help.addEventListener 'change', (e) ->
  classify_page.fieldGuideContainer.attr 'aria-hidden', !@.checked
