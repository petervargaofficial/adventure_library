class AdventuresWorker
  include Sidekiq::Worker
  # sidekiq_options queue: "high"
  # sidekiq_options retry: false

  def perform(url)
    scrape_url(url)
  end

  def scrape_url(url)
    if safe_parse("#{url}/adventures.json")
      new_library = Library.create(url:url)
      parse_adventures(url, new_library)
    end
    parse_libraries(url)
  end

  def parse_libraries(url)
    if safe_parse("#{url}/libraries.json")
      libraries = JSON.parse(Typhoeus.get("#{url}/libraries.json").body)
      if safe_each(libraries["libraries"])
        libraries["libraries"].each do |library|
          if Library.find_by(url:library["url"]) == nil
            # binding.pry
            scrape_url(library["url"])
          end
        end
      end
    end
  end

  def parse_adventures(url, new_library)
    if safe_parse("#{url}/adventures.json")
      adventures = JSON.parse(Typhoeus.get("#{url}/adventures.json").body)
      if safe_each(adventures["adventures"])
        adventures["adventures"].each do |adventure|
          if (
              (Adventure.find_by(guid:adventure["guid"]) == nil) ||
              (
                (Adventure.find_by(guid:adventure["guid"]) != nil) &&
                (Adventure.find_by(guid:adventure["guid"]).updated_at < adventure.updated_at)
              )
            )
            copy_adventure = Adventure.create(library_id:new_library.id,title:adventure["title"],author:adventure["author"],guid:adventure["guid"])
            if safe_each(adventure["pages"])
              adventure["pages"].each do |page|
                Page.create(name:page["name"], text:page["text"], adventure_id:copy_adventure.id)
              end
            end
          end
        end
      end
    end
  end

  def safe_parse(url)
    begin
      response = JSON.parse(Typhoeus.get(url).body)
    rescue JSON::ParserError
      return false
    end
    if response != nil
      return true
    else
      return false
    end
  end

  def safe_each(obj)
    begin
      obj.each do |variable|
      end
      return true
    rescue
      return false
    end
  end

end
