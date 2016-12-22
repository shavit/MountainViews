defmodule MountainView.Template do
  require EEx

  def render(template_name) do
    EEx.eval_file("views/#{template_name}.html.eex")
  end
end
