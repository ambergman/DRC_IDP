module StaticPagesHelper
  
  def text_input(id, label)
    <<-HTML.html_safe
      <div class="input">
        <label for=#{id}>#{label}</label>
      </div>
    HTML
  end

end
