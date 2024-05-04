ActiveAdmin.register Post do
    
  permit_params :title , :description, :image, :status

    index do
      selectable_column
      id_column
      column :title
      column :description
      column :status
      column :image
      column :created_at
      actions
    end

    filter :title
    filter :description
    filter :image
    filter :created_at

    form do |f|
      f.inputs do
        f.input :title
        f.input :description
        f.input :status, :as => :select, :collection =>  post.status
        f.input :image, as: :file
      end
      f.actions
    end

    show do 
      attributes_table do 
        row :title
        row :description
        row :status
        row :image do |post|
          if post.image.attached?
            image_tag rails_blob_url(post.image), size: "100*100"
          end
        end
      end
    end
end
