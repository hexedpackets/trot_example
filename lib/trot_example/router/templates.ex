defmodule TrotExample.Router.Templates do
  use Trot.Router
  use Trot.Template

  get "/compression/pied_piper" do
    render_template("compression_results.html.eex", [weissman_score: 5.2])
  end

  get "/compression/nucleus" do
    render_template("compression_results.html.haml", [weissman_score: 2.89])
  end
end
