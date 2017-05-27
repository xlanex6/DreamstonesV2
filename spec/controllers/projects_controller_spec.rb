# require 'rails_helper'
#
# describe 'ProjectsControllers' do
#   describe 'GET #show' do
#     it 'respond with 200' do
#       project = create(:project)
#       get project_path(project.id)
#       expect(response.status).to eq(200)
#     end
#   end
#
#   describe 'rendering #show' do
#     it 'renders the :show template' do
#       project = create(:project)
#       get :show, id: project
#       expect(response).to render_template :show
#     end
#     it 'renders project title' do
#       project = create(:project)
#       get :show, id: project
#       expect(reponse).to include(project.title)
#     end
#     it 'renders project text' do
#       project = create(:project)
#       get :show, id: project
#       expect(reponse).to include(project.text)
#     end
#   end
# end
