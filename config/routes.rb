XD6Rails::Application.routes.draw do
    root "public#home"

    get ":about" => "public#about", :about => /(about)/i
    get ":news" => "public#news", :news => /(news)/i
    get ":contact" => "public#contact", :contact => /(contact)/i
end
