require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
  let(:question) { create(:question) }
  let(:answer) { create(:answer, question: question)}

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves new answer to question' do
        expect { post :create, params: { answer: attributes_for(:answer), question_id: question } }.to change(question.answers, :count).by(1)
      end
      it 'redirect to show new'
    end
    context 'with invalid attributes' do
      it 'does not saves a new answer in the database'
      it 're-render create view'
    end
  end 
end



#context 'with valid attributes' do
#  it 'saves a new question in the database' do
#    expect { post :create, params: { question: attributes_for(:question) } }.to change(Question, :count).by(1)
#  end
#  it 'redirect to show new' do
#    post :create, params: { question: attributes_for(:question) }
#    expect(response).to redirect_to assigns(:question)
#  end
#end
#context 'with invalid attributes' do
#  it 'does not saves a new question in the database' do
#    expect { post :create, params: { question: attributes_for(:question, :invalid) } }.to_not change(Question, :count)
#  end
#  it 're-render create view' do
#    post :create, params: { question: attributes_for(:question, :invalid) }
#    expect(response).to render_template :new
#  end
#end