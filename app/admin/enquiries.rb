ActiveAdmin.register Enquiry do
    permit_params :name, :subject, :email, :description
  
    index do
      selectable_column
      id_column
      column :name
      column :subject
      column :email
      column :description
      column :created_at
      actions
    end
  
    filter :name
    filter :subject
    filter :email
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :name
        f.input :subject
        f.input :email
        f.input :description
      end
      f.actions
    end
  end
  