require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  describe 'GET index' do
    let(:user1) { User.create(name: 'Admin', email: 'admin@email.com', tel: '0911222333') }
    let(:task1) do
      Task.create(title: 'TestTask1',
                  description: 'Description of task1',
                  state: 0,
                  priority: 0,
                  start_time: '2019-07-21 20:11:02',
                  end_time: '2019-07-21 20:11:22',
                  user: user1)
    end

    # before do
    #   user
    #   task
    # end

    # it 'shoud has tasks' do
    #   get :index
    #   response = 
    #   expect(response.status).to be 200
    #   expect(response.body).to match(/TestTask1/)
    # end

    it 'response success' do
      get :index

      expect(response.success?).to eq true
      expect(response).to be_success
      expect(response).to render_template(:index)
      expect(response).to have_http_status(200)
    end
  end
end
