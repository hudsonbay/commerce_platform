defmodule CommercePlatform.PDF do
  @blue "#267ad3"
  @foreground "#3c3c3c"

  def generate_order_pdf(items) do
    html =
      Sneeze.render([
        :html,
        [
          :body,
          %{
            style:
              style(%{
                "font-family" => "Helvetica",
                "font-size" => "20pt",
                "color" => @foreground
              })
          },
          render_header(),
          render_list(items)
        ]
      ])

    {:ok, filename} = PdfGenerator.generate(html, page_size: "A4", shell_params: ["--dpi", "300"])

    File.rename(filename, "./shopping-list.pdf")
  end

  defp style(style_map) do
    style_map
    |> Enum.map(fn {key, value} ->
      "#{key}: #{value}"
    end)
    |> Enum.join(";")
  end

  defp render_header() do
    image_path =
      'example-image.png'
      |> Path.relative()
      |> Path.absname()

    date = DateTime.utc_now()
    date_string = "#{date.year}/#{date.month}/#{date.day}"

    [
      :div,
      %{
        style:
          style(%{
            "display" => "flex",
            "flex-direction" => "column",
            "align-items" => "flex-start",
            "margin-bottom" => "40pt"
          })
      },
      [
        :img,
        %{
          src: "file:///#{image_path}",
          style:
            style(%{
              "display" => "inline-block",
              "width" => "90pt;"
            })
        }
      ],
      [
        :div,
        %{
          style:
            style(%{
              "display" => "inline-block",
              "position" => "absolute",
              "padding-left" => "20pt",
              "margin-top" => "10pt"
            })
        },
        [
          :h1,
          %{
            style:
              style(%{
                "font-size" => "35pt",
                "color" => @blue,
                "margin-top" => "0pt",
                "padding-top" => "0pt"
              })
          },
          "Shopping List"
        ],
        [
          :h3,
          %{
            style:
              style(%{
                "font-size" => "20pt",
                "margin-top" => "-20pt"
              })
          },
          date_string
        ]
      ]
    ]
  end

  defp render_list(items) do
    list = [:ul, %{style: style(%{"list-style" => "none"})}]
    list_items = Enum.map(items, &render_item/1)
    list ++ list_items
  end

  defp render_item(item) do
    [
      :li,
      [
        :span,
        %{
          style:
            style(%{
              "display" => "inline-block",
              "border" => "solid 2pt ",
              "width" => "10pt",
              "height" => "10pt",
              "border-radius" => "2pt",
              "margin-right" => "15pt"
            })
        }
      ],
      item,
      [:hr]
    ]
  end
end
