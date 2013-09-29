XD6Rails::Application.routes.draw do
    root "public#home"

    get "about" => "public#about"
    get "news" => "public#news"
    get "contact" => "public#contact"
end
