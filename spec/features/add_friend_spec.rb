describe 'Add new friend' do
  before do
    visit '/'
  end

  it 'adds a new friend' do
    click_link 'New friend'
    expect(page).to have_content('New friend')

    fill_in 'friend_name', with: 'Jan'
    fill_in 'friend_surname', with: 'Kowalski'
    fill_in 'friend_email', with: 'JanKowalski@gmail.com'
    select 'other', from: 'friend[where_met]'
    click_button 'Create Friend'

    expect(page).to have_content('successfully')

    friend_name = page.find('#friend_name').value
    friend_surname = page.find('#friend_surname').value
    friend_email = page.find('#friend_email').value
    friend_where_met = page.find('#friend_where_met').value
    expect(friend_name).to eq 'Jan'
    expect(friend_surname).to eq 'Kowalski'
    expect(friend_email).to eq 'JanKowalski@gmail.com'
    expect(friend_where_met).to eq 'other'

    click_link 'Back'
    expect(page).to have_content('Jan')
    expect(page).to have_content('Kowalski')
    expect(page).to have_content('JanKowalski@gmail.com')
    expect(page).to have_content('other')

  end
end