json.array! @postmanposts_current_user do |post|
  json.id post.id
  json.pulocation post.pulocation
  json.packagetype post.packagetype
  json.earlyputime post.earlyputime
  json.lateputime post.lateputime
  json.destination post.destination
  json.earlydelitime post.earlydelitime
  json.latedelitime post.latedelitime
  json.remarks post.remarks
  json.username post.user.username
  json.user_id post.user.id
  json.postman_id post.postman_id
  json.contactnum post.user.contactnum
  json.status post.status
end