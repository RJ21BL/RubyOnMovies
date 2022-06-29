module MoviesHelper
  def render_index_template
    expect(response).to render_template('index')
  end
end
