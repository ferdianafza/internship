ActiveAdmin.register Student do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :firstname, :lastname, :school, :phone, :nis, 
    :address, :city, :province, :zipcode, :periode, :status, :major_id, :reset_password_token, 
    :reset_password_sent_at, :remember_created_at, :mothers_name, :fathers_name, :emergency_number,
    :avatar
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :firstname, :lastname, :school, :phone, :nis, :address, :city, :province, :zipcode, :periode, :status, :major_id, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    id_column
    column :email
    column :firstname
    column :lastname
    actions
  end

  index as: :grid, default: true do |student|
    link_to image_tag(student.avatar, width: "40%"), admin_student_path(student)
  end

  filter :email
  filter :firstname
  filter :lastname

  show do
   attributes_table do
      row :avatar do |av|
        image_tag av.avatar, width: "10%"
      end

      row :email
      row :firstname
      row :lastname
    end
  end

  form do |f|
    f.inputs :multipart => true do
      f.input :email
      f.input :firstname
      f.input :lastname
      f.input :status, :as => :boolean
      f.input :major
      f.input :avatar, :as => :file
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
