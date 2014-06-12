module PostsHelper
  def post_last_path(post)
    post_path(post, page: (post.total_pages if post.total_pages > 1), anchor: (post.comments_count if post.comments_count > 0))
  end

  def match(str)
    r = /\!\[.*\]\((.+)\)/
    r.match(str)[0].to_s
  end
end
