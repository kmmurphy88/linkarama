module LinksHelper

  def ext_link(link)
    if link.include?("http://")
     link
    else
      link.insert(0, "http://")
      link
    end
  end

end
