module MessagesHelper
  # highlight method is provided by : ActionView::Helpers::TextHelper

  def mentions(text)
    text.scan(/@(#{User::NAME_REGEX})/).flatten.map do |username|
      "@" << username
    end
  end

  def markdown(text)
    Kramdown::Document.new(text, input: 'GFM')
  end

  def highlight_mentions_in(text)
    highlight(text, mentions(text), highlighter: '<em>\1</em>' )
  end

  def text_tranformation(text)
    # tranforming text to html with markdown and highlight mentions
    output_text = highlight_mentions_in text
    output_text = markdown output_text
    # render output as safe html
    output_text.to_html
  end
end
