json.array! @posts do |post|
  json.pulocation post.pulocation
  json.packagetype post.packagetype
  json.pudate post.pudate
  json.putime post.putime
  json.destination post.destination
  json.delidate post.delidate
  json.delitime post.delitime
  json.remarks post.remarks
  json.username post.user.username
  json.user_id post.user.id
  json.contactnum post.user.contactnum

end