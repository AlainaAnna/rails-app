require 'rails_helper'

RSpec.describe "Tasks", type: :request do

  it "task path" do
    get "/tasks"
    expect(response).to render_template("tasks/index")
  end

  it "task new" do
    get "/tasks/new"
    expect(response).to render_template("tasks/new")
  end

end