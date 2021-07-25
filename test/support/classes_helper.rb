module ClassesHelper
  def assert_classes(classes)
    assert_selector(:css, classes.split.join(".").prepend("."))
  end
end
