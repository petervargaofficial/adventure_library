module PagesHelper
  def linkify_page page
    regex = /\[\[([^|]+)\|(\w+)\]\]/
    page.text.gsub(regex) do |link|
      caps = regex.match(link)
      if page.adventure.pages.where(:name => caps[2]).first != nil
        linked_page = page.adventure.pages.where(:name => caps[2]).first
        link_to(caps[1], adventure_page_path(page.adventure_id, linked_page.id))
      else
      	link_to("This link doesn't exist! Say something kind to the story author and ask for repair! Click to go to homepage", root_path)
      end
    end
  end
end
