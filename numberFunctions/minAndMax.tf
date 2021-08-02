locals {
  maxValue = max(1,2,3,4)
  maxValueWithExten = max([1,2,3,4]...)
  minValue = min(1,2,3,4)
  minValueWithExten = min([1,2,3,4]...)
}