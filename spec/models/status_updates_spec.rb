require 'rails_helper'

describe StatusUpdate do
  it "validates the presence of status" do
    status_update = StatusUpdate.new(user: "Joe", likes: 100)
    status_update.valid?
    expect(status_update.errors[:status].presence?).to eq(true)

    status_update.status = "Hello world."
    status_update.valid?
    expect(status_update.errors[:status].presence?).to eq(false)
  end

  it "validates the presence of user" do
    status_update = StatusUpdate.new(status: "Drinking a cup of joe", likes: 100)
    status_update.valid?
    expect(status_update.errors[:user].presence?).to eq(true)

    status_update.user = "Joe"
    status_update.valid?
    expect(status_update.errors[:user].presence?).to eq(false)
  end

  it "validates the presence of likes" do
    status_update = StatusUpdate.new(user: "Joe", status: "Drinking a cup of joe")
    status_update.valid?
    expect(status_update.errors[:likes].presence?).to eq(true)

    status_update.likes = 200
    status_update.valid?
    expect(status_update.errors[:likes].presence?).to eq(false)
  end
end
