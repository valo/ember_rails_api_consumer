require 'rails_helper'

describe Project do
  describe :all do
    let(:tasks) do
      [{
        id: 1,
        name: "Milk",
        project_id: projects[0][:id]
      },
      {
        id: 2,
        name: "Bread",
        project_id: projects[0][:id]
      },
      {
        id: 3,
        name: "Butter",
        project_id: projects[1][:id]
      }]
    end
    let(:projects) do
      [{
        id: 1,
        name: "Shop list",
        task_ids: [1, 2]
      }, {
        id: 2,
        name: "Other Shop list",
        task_ids: [2, 3]
      }]
    end

    let(:projects_response) do
      {
        projects: projects,
        tasks: tasks
      }.to_json
    end

    before do
      stub_api_for(Project) do |stub|
        stub.get("/projects") { |env| [200, {}, projects_response] }
      end
    end

    it "contains project instances" do
      expect(Project.all).to all(be_a(Project))
    end

    it "contains 2 elements" do
      expect(Project.all.length).to be 2
    end

    it "contains related tasks" do
      expect(Project.all[0].tasks).to all(be_a(Task))
    end
  end
end
