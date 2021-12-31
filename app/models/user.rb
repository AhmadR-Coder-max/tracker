class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :masqueradable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :projects

  def worklogs
    Worklog.where(task_id: Task.where(project_id: projects.pluck(:id)).pluck(:id))
  end
end
