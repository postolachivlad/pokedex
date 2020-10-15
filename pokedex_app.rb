class PokedexApp < Sinatra::Application
  enable :sessions

  get '/' do
    display_page :index
  end

  def display_page(location, locals = {})
    options = {
      layout_options: { views: './views/layouts' },
      layout: locals.fetch(:layout) { :default },
      locals: locals
    }

    haml location.to_sym, options
  end

  def display_partial(location, locals = {})
    haml location.to_sym, layout: false, locals: locals
  end
end
