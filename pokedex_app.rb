class PokedexApp < Sinatra::Application
  enable :sessions

  get '/' do
    display_partial :index
  end

  def display_page(location, locals = {})
    options = {
      layout_options: { views: './views/layouts' }, # Special options only used for rendering the layout
      layout: locals.fetch(:layout) { :default }, # Whether to use a layout (true or false)
      locals: locals # List of locals passed to the document
    }

    haml location.to_sym, options # Rendering method (template name)
  end

  def display_partial(location, locals = {})
    haml location.to_sym, layout: false, locals: locals # Rendering method (template name)
  end
end
