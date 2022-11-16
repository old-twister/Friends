describe Friend do
  context 'when name not passed' do
    it 'does not create friend' do
      friend = Friend.create(name: '')
      expect(Friend.count).to eq 0
    end

    it 'is not valid' do
      friend = Friend.create(name: '')
      expect(friend.valid?).to eq false
    end
  end

  context 'when surname not passed' do
    it 'does not create friend' do
      friend = Friend.create(surname: '')
      expect(Friend.count).to eq 0
    end

    it 'is not valid' do
      friend = Friend.create(surname: '')
      expect(friend.valid?).to eq false
    end
  end

  context 'when email not passed' do
    it 'does not create friend' do
      friend = Friend.create(email: '')
      expect(Friend.count).to eq 0
    end

    it 'is not valid' do
      friend = Friend.create(email: '')
      expect(friend.valid?).to eq false
    end
  end

  context 'when email not confirmed' do
    # how to test email confirmation?
  end

  context 'when email not unique' do
    it 'does not create friend' do
      friend = Friend.create(email: 'a1@test.com')
      friend1 = Friend.create(email: 'a1@test.com')
      expect(friend1.valid?).to eq false
    end
  end
end
