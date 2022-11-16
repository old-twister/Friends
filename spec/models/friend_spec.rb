describe Friend, type: :model do
  describe 'columns' do
    it { is_expected.to have_db_column(:name).of_type(:string)}
    it { is_expected.to have_db_column(:surname).of_type(:string)}
    it { is_expected.to have_db_column(:email).of_type(:string)}
    it { is_expected.to have_db_column(:where_met).of_type(:integer)}
    it { is_expected.to have_db_column(:created_at).of_type(:datetime)}
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime)}
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:surname)}
    it { is_expected.to validate_presence_of(:email)}
    it { is_expected.to define_enum_for(:where_met).with_values(Friend.where_mets)}
  end
end