module RedmineHideProjectStaticallyConstants
  PROJECT_IDS = [0,0]
  USER_IDS = [0,0]
end

module RedmineHideProjectStaticallyUser
  include RedmineHideProjectStaticallyConstants
  def allowed_to?(action, context, options={}, &block)
    out = super(action, context, options, &block)
    if out && context && context.is_a?(Project) && PROJECT_IDS.any? { |i| i == context.id }
      return false unless USER_IDS.any? { |i| i == id }
    end
    out
  end
end

User.prepend RedmineHideProjectStaticallyUser

module RedmineHideProjectStaticallyProject
  include RedmineHideProjectStaticallyConstants
  def allowed_to_condition(user, permission, options={})
    statement = super(user, permission, options)
    if user.admin? && !USER_IDS.any? { |i| i == user.id }
      statement += " AND #{Project.table_name}.id NOT IN (#{PROJECT_IDS.join(',')})"
    end
    statement
  end
end

Project.singleton_class.prepend RedmineHideProjectStaticallyProject
