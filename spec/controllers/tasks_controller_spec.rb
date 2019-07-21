require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  let(:user1) { User.create(name: 'Admin', email: 'admin@email.com', tel: '0911222333') }
  let(:task1) { Task.create(title: 'TestTask1', description: 'Description of task1', state: 0, priority: 0, start_time: '2019-07-21 20:11:02', end_time: '2019-07-21 20:11:22', user: user1) }
  describe '任務新增功能' do
    it '建立完之後要檢查資料庫是否確實有建立' do
      create_task = Task.new(title: 'TestTask1', user: user1)
      expect(create_task.save!).to be true
    end
    it '確認任務數量' do
      2.times { Task.create(title: 'TestTask2', user: user1) }
      expect(Task.count).to eq 2
    end
    it '任務的標題、內容、時間、優先度等等都和建立的一樣' do
      expect(task1.title).to eq 'TestTask1'
      expect(task1.description).to eq 'Description of task1'
      expect(task1.priority).to eq 'high'
      expect(task1.state).to eq 'pending'
      expect(task1.user).to be user1
      expect(user1.tasks[0]).to eq task1
      expect(task1.start_time).to eq '2019-07-21 20:11:02'.in_time_zone('Taipei')
      expect(task1.end_time).to eq '2019-07-21 20:11:22'.in_time_zone('Taipei')
    end
  end

  describe '任務更新功能' do
    it '更新任務後，畫面和資料庫內容都應該同步更新' do
      expect(task1.update(title: 'Update title')).to be true
      expect(task1.title).to eq 'Update title'
      expect(task1.save).to be true
      expect(Task.first).to eq task1
    end
  end

  describe '任務刪除功能' do
    it '刪除後是否確實從資料庫消失' do
      2.times { Task.create(title: 'TestTask', user: user1) }
      t1 = Task.first
      expect(Task.count).to eq 2
      expect(t1.destroy!).to eq t1
      expect(Task.count).to eq 1
    end
  end
end
