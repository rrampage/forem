RSpec.shared_context "with DEV profile fields" do
  before(:all) do
    csv = Rails.root.join("lib/data/dev_profile_fields.csv")
    ProfileFields::ImportFromCsv.call(csv)
    Profile.refresh_attributes!
  end

  after(:all) { ProfileField.destroy_all }
end
