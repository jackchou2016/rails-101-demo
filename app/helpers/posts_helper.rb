module PostsHelper

  end

def render_post_content(post)
    simple_format(truncate(post.content, lenth: 100))
  end
