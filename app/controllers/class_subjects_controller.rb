class ClassSubjectsController < ApplicationController

  def index
    @class_subjects = current_user.class_subjects.order(created_at: :desc)
  end

  def new
    @class_subject = current_user.class_subjects.new
  end

  def create
    @class_subject = current_user.class_subjects.new(class_subjects_params)
    if @class_subject.save
      respond_to do |format|
        format.html {
          redirect_to class_subjects_path, notice: 'Class subject was successfully created.'
        }
      end
    else
      respond_to do |format|
        format.html {
          redirect_to new_class_subject_path, alert: 'Class subject was not created.'
        }
      end
    end
  end

  def destroy
    @class_subject = current_user.class_subjects.find(params[:id])

    if @class_subject.destroy
      redirect_to class_subjects_path, notice: 'Class subject was successfully deleted.'
    else
      redirect_to class_subjects_path, alert: 'Failed to delete class subject.'
    end
  end

  private

  def class_subjects_params
    params.require(:class_subject).permit(:name, :code, :description)
  end

end
