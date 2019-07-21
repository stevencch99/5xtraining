require 'rails_helper'

RSpec.describe TasksController, type: :controller do
describe '任務新增功能' do
  it '建立完之後要檢查資料庫是否確實有建立' do
    u1 = User.create(name: 'Admin', email: 'admin@email.com', tel: '0911222333')
    Task.create(title: 'Test', user: u1)
    expect(Task.count).to eq 1
  end
  it '還要確認任務數量'
  it '確認 任務的標題、內容、時間、優先度等等都要和建立的一樣'
end
end
