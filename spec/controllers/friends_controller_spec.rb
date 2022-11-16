describe FriendsController, type: :controller do
  describe 'GET #index' do
    subject(:index_request) { get :index }
    it 'returns http success' do
      index_request
      expect(response).to have_http_status(:ok)
    end

    it 'renders the index template' do
      index_request
      expect(response).to render_template('index')
    end
  end

  describe 'GET #show' do
    let(:friend) { create(:friend) }
    subject(:show_request) { get :show, params: { id: friend.id } }
    it 'returns http success' do
      show_request
      expect(response).to have_http_status(:ok)
    end

    it 'renders the show template' do
      show_request
      expect(response).to render_template('show')
    end
  end

  describe 'GET #new' do
    subject(:new_request) { get :new }
    it 'returns http success' do
      new_request
      expect(response).to have_http_status(:ok)
    end

    it 'renders the new template' do
      new_request
      expect(response).to render_template('new')
    end
  end

  describe 'GET #edit' do
    let(:friend) { create(:friend) }
    subject(:edit_request) { get :edit, params: { id: friend.id } }
    it 'returns http success' do
      edit_request
      expect(response).to have_http_status(:ok)
    end

    it 'renders the edit template' do
      edit_request
      expect(response).to render_template('edit')
    end
  end

  describe 'POST #create' do
    let(:friend) { build(:friend) }
    subject(:create_request) { post :create, params: { friend: friend.attributes } }
    it 'returns http redirect' do
      create_request
      expect(response).to have_http_status(302)
    end

    it 'redirect to the new friend' do
      create_request
      expect(response).to redirect_to(friend_path(Friend.last))
    end

    it 'create new friend' do
      expect { create_request }.to change(Friend, :count).by(1)
    end
  end

  describe 'PUT #update' do
    let(:friend) { create(:friend) }
    let(:new_attributes) { attributes_for(:friend) }
    subject(:update_request) { put :update, params: { id: friend.id, friend: new_attributes } }
    it 'returns http redirect' do
      update_request
      expect(response).to have_http_status(302)
    end

    it 'redirect to the updated friend' do
      update_request
      expect(response).to redirect_to(friend_path(friend))
    end

    it 'updates the friend' do
      expect { update_request }.to change { friend.reload.name }.to(new_attributes[:name])
    end
  end

  describe 'DELETE #destroy' do
    let!(:friend) { create(:friend) }
    subject(:destroy_request) { delete :destroy, params: { id: friend.id } }
    it 'returns http redirect' do
      destroy_request
      expect(response).to have_http_status(302)
    end

    it 'redirects to the friend index' do
      destroy_request
      expect(response).to redirect_to(friends_path)
    end

    it 'delete friend' do
      expect { destroy_request }.to change(Friend, :count).by(-1)
    end
  end

  describe 'GET #school' do
    subject(:school_request) { get :school }
    it 'returns http success' do
      school_request
      expect(response).to have_http_status(:ok)
    end

    it 'render teh active template' do
      school_request
      expect(response).to render_template('school')
    end
  end

  describe 'GET #work' do
    subject(:work_request) { get :work }
    it 'returns http success' do
      work_request
      expect(response).to have_http_status(:ok)
    end

    it 'render the inactive template' do
      work_request
      expect(response).to render_template('work')
    end
  end

  describe 'GET #holiday' do
    subject(:holiday_request) { get :holiday }
    it 'returns http success' do
      holiday_request
      expect(response).to have_http_status(:ok)
    end

    it 'render the borrowed template' do
      holiday_request
      expect(response).to render_template('holiday')
    end
  end
end