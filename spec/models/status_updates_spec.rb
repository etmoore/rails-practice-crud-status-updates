require 'rails_helper'

describe StatusUpdate do
  it "validates the presence of status" do
    status_update = StatusUpdate.new(user: "Joe", likes: 100)
    status_update.valid?
    expect(status_update.errors[:status].present?).to eq(true)

    status_update.status = "Hello world."
    status_update.valid?
    expect(status_update.errors[:status].present?).to eq(false)
  end

  it "validates the presence of user" do
    status_update = StatusUpdate.new(status: "Drinking a cup of joe", likes: 100)
    status_update.valid?
    expect(status_update.errors[:user].present?).to eq(true)

    status_update.user = "Joe"
    status_update.valid?
    expect(status_update.errors[:user].present?).to eq(false)
  end

  it "validates the presence of likes" do
    status_update = StatusUpdate.new(user: "Joe", status: "Drinking a cup of joe")
    status_update.valid?
    expect(status_update.errors[:likes].present?).to eq(true)

    status_update.likes = 200
    status_update.valid?
    expect(status_update.errors[:likes].present?).to eq(false)
  end
end
