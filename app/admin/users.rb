# app/admin/users.rb
ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :name, :avatar

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :name
      f.input :avatar
    end
    f.actions
  end
end
