json.array!(@family_members) do |family_member|
  json.extract! family_member, :id, :first_name, :middle_name, :last_name, :dob, :email, :image, :occupation, :description, :phone_number
  json.url family_member_url(family_member, format: :json)
end
