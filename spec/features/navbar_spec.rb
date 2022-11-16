describe 'Navbar' do
  before do
    visit '/'
  end

  it 'has link to All items' do
    expect(page).to have_link('All')
  end

  it 'has link to School friend' do
    expect(page).to have_link('School')
  end

  it 'has link to Work friends' do
    expect(page).to have_link('Work')
  end

  it 'has link to Holiday friends' do
    expect(page).to have_link('Holiday')
  end
end