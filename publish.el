(require 'weblorg)

;; route for rendering each post
(weblorg-route
 :name "posts"
 :input-pattern "posts/*.org"
 :template "post.html"
 :output "output/posts/{{ slug }}.html"
 :url "/posts/{{ slug }}.html")

;; route for rendering the index page of the blog
(weblorg-route
 :name "blog"
 :input-pattern "posts/*.org"
 :input-aggregate #'weblorg-input-aggregate-all-desc
 :template "blog.html"
 :output "output/index.html"
 :url "/")

;; route for rendering each page
(weblorg-route
 :name "pages"
 :input-pattern "pages/*.org"
 :template "page.html"
 :output "output/{{ slug }}.html"
 :url "/{{ slug }}.html")

;; fire the engine and export all the files declared in the routes above
(weblorg-export)
