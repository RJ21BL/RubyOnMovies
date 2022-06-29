RSpec.shared_examples 'render index' do
  it 'renders the index template' do
    render_index_template

    expect(response).to render_template('index')
  end
end
