defmodule GceWeb.CoreComponents do
  @moduledoc """
  Provides core UI components.

  At the first glance, this module may seem daunting, but its goal is
  to provide some core building blocks in your application, such as modals,
  tables, and forms. The components are mostly markup and well documented
  with doc strings and declarative assigns. You may customize and style
  them in any way you want, based on your application growth and needs.

  The default components use Tailwind CSS, a utility-first CSS framework.
  See the [Tailwind CSS documentation](https://tailwindcss.com) to learn
  how to customize them or feel free to swap in another framework altogether.

  Icons are provided by [heroicons](https://heroicons.com). See `icon/1` for usage.
  """
  use Phoenix.Component

  alias Phoenix.LiveView.JS
  import GceWeb.Gettext

  attr :img, :string, default: "default.svg"
  attr :name, :string, default: "Announced Soon"
  attr :slug, :string, default: "anonymous-moose"
  attr :talk, :string

  def speaker(assigns) do
    ~H"""
    <a href={"/speakers/#{@slug}"} class="ff-odudomono-r css-4odi6r">
      <img src={"/images/speakers/#{@img}"} alt={@name} />
      <style data-emotion-css="1xoq505">
        .css-1xoq505 {
            color: white;
            padding: 0.48333rem 1.45rem;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-flex-direction: column;
            -webkit-align-items: center;
            -webkit-justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: start;
            justify-content: center;
            font-size: 1.3rem;
            line-height: 1.5rem;
        }
      </style>
      <style data-emotion-css="1xoq5051">
        .css-1xoq5051 {
            color: white;
            font-size: 1rem;
            line-height: 1.2rem;
            margin: 0.5rem 0 0 0;
        }
      </style>
      <div class="css-1xoq505">
        <span><%= @name %></span>
        <%= if @talk !== nil do %>
          <span class="css-1xoq5051">"<%= @talk %>"</span>
        <% end %>
      </div>
    </a>
    """
  end

  def schedule_tbd(assigns) do
    ~H"""
    <section id="schedule_tbd" class="css-5a3jdq">
      <style data-emotion-css="x64vdy">
        .css-x64vdy {
            max-width: 63rem;
            margin: 0px auto;
        }

        @media screen and (min-width: 42rem) {
            .css-x64vdy {
                display: -webkit-box;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
            }
        }

        @supports (display: grid) {
            @media screen and (min-width: 42rem) {
                .css-x64vdy {
                    display: grid;
                    grid: "title content content";
                    grid-template-columns: 1fr 2fr;
                    grid-template-rows: 1fr;
                    grid-column-gap: 4.35rem;
                }
            }
        }
      </style>
      <div class="css-x64vdy">
        <style data-emotion-css="1yougn2">
          .css-1yougn2 {
              width: calc(100% / 3 - 4.35rem);
              margin-right: 4.35rem;
          }

          @media screen and (min-width: 42rem) {
              .css-1yougn2 {
                  text-align: right;
              }
          }

          @supports (display: grid) {
              .css-1yougn2 {
                  margin-right: 0;
                  width: auto;
              }

              @media screen and (min-width: 42rem) {
                  .css-1yougn2 {
                      grid-area: title;
                  }
              }
          }
        </style>
        <div class="css-1yougn2">
          <style data-emotion-css="9ysvld">
            .css-9ysvld {
                text-transform: uppercase;
                margin-bottom: 0;
                -webkit-letter-spacing: 0.25ch;
                -moz-letter-spacing: 0.25ch;
                -ms-letter-spacing: 0.25ch;
                letter-spacing: 0.25ch;
                line-height: 1.075;
                font-size: 1.25rem;
                color: #772858;
            }
          </style>
          <h2 class="css-9ysvld">Schedule</h2>
        </div>
      </div>
    </section>
    """
  end

  def schedule1(assigns) do
    ~H"""
    <section id="schedule" class="css-5a3jdq">
      <style data-emotion-css="x64vdy">
        .css-x64vdy {
            max-width: 63rem;
            margin: 0px auto;
        }

        @media screen and (min-width: 42rem) {
            .css-x64vdy {
                display: -webkit-box;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
            }
        }

        @supports (display: grid) {
            @media screen and (min-width: 42rem) {
                .css-x64vdy {
                    display: grid;
                    grid: "title content content";
                    grid-template-columns: 1fr 1fr 1fr;
                    grid-template-rows: 1fr;
                    grid-column-gap: 4.35rem;
                }
            }
        }
      </style>
      <div class="css-x64vdy">
        <style data-emotion-css="1yougn2">
          .css-1yougn2 {
              width: calc(100% / 3 - 4.35rem);
              margin-right: 4.35rem;
          }

          @media screen and (min-width: 42rem) {
              .css-1yougn2 {
                  text-align: right;
              }
          }

          @supports (display: grid) {
              .css-1yougn2 {
                  margin-right: 0;
                  width: auto;
              }

              @media screen and (min-width: 42rem) {
                  .css-1yougn2 {
                      grid-area: title;
                  }
              }
          }
        </style>
        <div class="css-1yougn2">
          <style data-emotion-css="9ysvld">
            .css-9ysvld {
                text-transform: uppercase;
                margin-bottom: 0;
                -webkit-letter-spacing: 0.25ch;
                -moz-letter-spacing: 0.25ch;
                -ms-letter-spacing: 0.25ch;
                letter-spacing: 0.25ch;
                line-height: 1.075;
                font-size: 1.25rem;
                color: #772858;
            }
          </style>
          <style data-emotion-css="9ysvld1">
            .css-9ysvld1 {
                display: flex;
                flex-direction: column;
                gap: 10px

            }
          </style>
          <style data-emotion-css="9ysvld12">
            .css-9ysvld12 {
              display: flex;
              flex-direction: row;
              gap: 20px;
              style: none;
              justify-content: start;
              margin-right: 3px;
            }
          </style>
          <div class="css-9ysvld1">
            <h2 class="css-9ysvld">Schedule</h2>
          </div>

          <style data-emotion-css="12i59y2">
            .css-12i59y2 {
                -webkit-letter-spacing: 0.25ch;
                -moz-letter-spacing: 0.25ch;
                -ms-letter-spacing: 0.25ch;
                letter-spacing: 0.25ch;
                opacity: 0.75;
                color: #3B3D40;
            }
          </style>
          <p class="ff-odudomono-l css-12i59y2"></p>
        </div>
        <style data-emotion-css="1hchxhu">
          .css-1hchxhu {
              width: calc(100% / 3 * 2);
          }

          @supports (display: grid) {
              .css-1hchxhu {
                  grid-area: content;
                  width: auto;
              }

              @media screen and (min-width: 42rem) {
                  .css-1hchxhu {
                      padding: 0 2.9rem;
                  }
              }
          }
        </style>
        <div class="css-1hchxhu">
          <div>
            <style data-emotion-css="tom7uu">
              .css-tom7uu th, .css-tom7uu td {
                  vertical-align: top;
              }

              .css-tom7uu th {
                  white-space: pre;
                  font-weight: normal;
                  color: rgba(0, 0, 0, 0.5);
                  font-family: "OdudoMono-Regular", monospace;
              }

              .css-tom7uu thead th {
                  color: #772858;
                  font-size: 20px;
                  font-family: "OdudoMono-Regular", sans-serif;
                  border-bottom: 1px solid currentColor;
                  text-align: right;
              }

              .css-tom7uu thead th a {
                  opacity: 0;
                  position: absolute;
              }

              .css-tom7uu thead th:hover a {
                  opacity: 1;
              }

              .css-tom7uu thead th a:focus {
                  opacity: 1;
              }
            </style>
            <style data-emotion-css="tom7uu1">
              .css-tom7uu1 {
                color: #772858;

              }
            </style>
            <table class="css-tom7uu">
              <thead>
                <tr>
                  <div class="css-9ysvld12">
                    <strong><a href="#day-1">#day 1</a></strong>
                    <strong><a href="#day-2">#day 2</a></strong>
                  </div>
                  <th id="day-1" colspan="2">
                    Friday, May 10th
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th>8:00 - 8:45</th>
                  <td>
                    <span>Breakfast and Registration</span>
                  </td>
                </tr>
                <tr>
                  <th>8:45 - 9:00</th>
                  <td>
                    <span>Welcome</span>
                  </td>
                </tr>
                <tr>
                  <th>9:00 - 9:45</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1"> Randall Thomas</span>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <th>9:50 - 10:20</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Brian Cardela</span>
                    </strong>
                    :<!-- -->
                    <span>
                      "LiveView Native"
                    </span>
                  </td>
                </tr>
                <tr>
                  <th>10:20 - 10:50</th>
                  <td>
                    <span>Break</span>
                  </td>
                </tr>
                <tr>
                  <th>10:50 - 11:20</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Lekha Surisani</span>
                    </strong>
                    :<!-- -->
                    <span> "Tales of Using Phoenix LiveView at an Early Stage Startup"</span>
                  </td>
                </tr>
                <tr>
                  <th>11:25 - 11:30</th>
                  <td>
                    <span class="css-tom7uu1">Platinum Sponsor Talk - HCA</span>
                  </td>
                </tr>
                <tr>
                  <th>11:30 - 12:00</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Andrew Ek</span>
                    </strong>
                    :<!-- -->
                    <span>"An Opinionated Approach for Onboarding New-to-Elixir Developers"</span>
                  </td>
                </tr>
                <tr>
                  <th>12:00 - 12:30</th>
                  <td>
                    <strong><span class="css-tom7uu1">Flora Petterson</span></strong>
                    :<!-- -->
                    <span>
                      "The Programming Languages Tour, Elixir’s Version"
                    </span>
                  </td>
                </tr>
                <tr>
                  <th>12:30 - 1:40</th>
                  <td>
                    <span>Lunch</span>
                  </td>
                </tr>
                <tr>
                  <th>1:40 - 2:30</th>
                  <td>
                    <span class="css-tom7uu1">Beam Radio Recording and Groxio sponsor 5 min</span>
                  </td>
                </tr>
                <tr>
                  <th>2:30 - 3:00</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Frank Hunleth </span>
                    </strong>
                    :<!-- -->
                    <span>"Nerves Update"</span>
                  </td>
                </tr>
                <tr>
                  <th>3:00 - 3:30</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Anna Sherman </span>
                    </strong>
                    :<!-- -->
                    <span>
                      "The Joy of Functional Coding: Exploring Functional Programming through the Lens of Bob Ross"
                    </span>
                  </td>
                </tr>
                <tr>
                  <th>3:30 - 4:00</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Stuart Page </span>
                    </strong>
                    :<!-- -->
                    <span>
                      "Stupid, Awesome AI! Product Development When the Tech Is Changing Daily"
                    </span>
                  </td>
                </tr>
                <tr>
                  <th>4:00 - 4:15</th>
                  <td>
                    <span>Break</span>
                  </td>
                </tr>

                <tr>
                  <th>4:15 - 4:45</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Chris Keathley</span>
                    </strong>
                    <!-- :-->
                    <span></span>
                  </td>
                </tr>

                <tr>
                  <th>4:45 - 5:15</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Andrea Leopardi</span>
                    </strong>
                    <!-- :-->
                    <span></span>
                  </td>
                </tr>
                <tr>
                  <th></th>
                  <td>
                    <strong>
                      Announcements - dinner info - need ticket, get one before you leave!
                    </strong>
                  </td>
                </tr>
                <tr>
                  <th>6:00 - 10:00</th>
                  <td>
                    <a href="https://www.google.com/maps/place/Moxy+Chattanooga+Downtown/@35.0399322,-85.3071289,17z/data=!4m20!1m10!3m9!1s0x88605fe8761cce13:0xca45ed9b3732da0b!2sMoxy+Chattanooga+Downtown!5m2!4m1!1i2!8m2!3d35.0399322!4d-85.3071289!16s%2Fg%2F11f5488nmn!3m8!1s0x88605fe8761cce13:0xca45ed9b3732da0b!5m2!4m1!1i2!8m2!3d35.0399322!4d-85.3071289!16s%2Fg%2F11f5488nmn">
                      Dinner - The Moxy <br /> 1220 King St Chattanooga, TN 37403
                    </a>
                  </td>
                </tr>
              </tbody>
              <thead>
                <tr>
                  <th id="day-2" colspan="2" style="padding-top:1rem">
                    <!-- -->
                                            Saturday, May 11th
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th>8:00 - 8:45</th>
                  <td>
                    <span>Breakfast</span>
                  </td>
                </tr>
                <tr>
                  <th>8:45 -  9:00</th>
                  <td>
                    <span>Announcements and Welcome</span>
                  </td>
                </tr>
                <tr>
                  <th>9:00 -  9:45</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Bryan Hunter</span>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <th>9:50 - 10:20</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Chris Miller</span>
                    </strong>
                    :<!-- -->
                    <span>"How to Move Fast and Build Things: Spawnfest 2023 Recap"</span>
                  </td>
                </tr>
                <tr>
                  <th>10:20 - 10:50</th>
                  <td>
                    <span>Break</span>
                  </td>
                </tr>
                <tr>
                  <th>10:50 - 11:20</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Todd Resudek</span>
                    </strong>
                    :<!-- -->
                    <span>"The Robots Won"</span>
                  </td>
                </tr>
                <tr>
                  <th>11:25 - 11:30</th>
                  <td>
                    <span>Buffer</span>
                  </td>
                </tr>
                <tr>
                  <th>11:30 - 12:00</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Savannah Manning</span>
                    </strong>
                    and
                    <strong>
                      <span class="css-tom7uu1">Bruce Tate</span>
                    </strong>
                    :<!-- -->
                    <span>"An Expedition into Elixir ML"</span>
                  </td>
                </tr>
                <tr>
                  <th>12:00 - 12:30</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Amos King</span>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <th>12:30 - 1:40</th>
                  <td>
                    <span>Lunch</span>
                  </td>
                </tr>
                <tr>
                  <th>1:40 - 2:10</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Sam McDavid</span>
                    </strong>
                    :<!-- -->
                    <span>
                      "ML for Trading Stocks in Elixir"
                    </span>
                  </td>
                </tr>
                <tr>
                  <th>2:15 - 2:45</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Chris Nelson</span>
                    </strong>
                    :<!-- -->
                    <span>
                      "LiveState: LiveView re-imagined"
                    </span>
                  </td>
                </tr>
                <tr>
                  <th>2:45 - 3:00</th>
                  <td>
                    <span>Break</span>
                  </td>
                </tr>
                <tr>
                  <th>3:00 - 3:30</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Zach Daniel </span>
                    </strong>
                    :<!-- -->
                    <span>
                      "The Story of a Function"
                    </span>
                  </td>
                </tr>
                <tr>
                  <th>3:45 - 4:30</th>
                  <td>
                    <strong>
                      <span class="css-tom7uu1">Lars Wikman</span>
                    </strong>
                    :<!-- -->
                    <span>
                      "Simplicity"
                    </span>
                  </td>
                </tr>
                <tr>
                  <th>4:30</th>
                  <td>
                    <span>Wrap!</span>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </section>
    """
  end

  @doc """
  Renders a modal.

  ## Examples

      <.modal id="confirm-modal">
        This is a modal.
      </.modal>

  JS commands may be passed to the `:on_cancel` to configure
  the closing/cancel event, for example:

      <.modal id="confirm" on_cancel={JS.navigate(~p"/posts")}>
        This is another modal.
      </.modal>

  """
  attr :id, :string, required: true
  attr :show, :boolean, default: false
  attr :on_cancel, JS, default: %JS{}
  slot :inner_block, required: true

  def modal(assigns) do
    ~H"""
    <div
      id={@id}
      phx-mounted={@show && show_modal(@id)}
      phx-remove={hide_modal(@id)}
      data-cancel={JS.exec(@on_cancel, "phx-remove")}
      class="relative z-50 hidden"
    >
      <div id={"#{@id}-bg"} class="bg-zinc-50/90 fixed inset-0 transition-opacity" aria-hidden="true" />
      <div
        class="fixed inset-0 overflow-y-auto"
        aria-labelledby={"#{@id}-title"}
        aria-describedby={"#{@id}-description"}
        role="dialog"
        aria-modal="true"
        tabindex="0"
      >
        <div class="flex min-h-full items-center justify-center">
          <div class="w-full max-w-3xl p-4 sm:p-6 lg:py-8">
            <.focus_wrap
              id={"#{@id}-container"}
              phx-window-keydown={JS.exec("data-cancel", to: "##{@id}")}
              phx-key="escape"
              phx-click-away={JS.exec("data-cancel", to: "##{@id}")}
              class="shadow-zinc-700/10 ring-zinc-700/10 relative hidden rounded-2xl bg-white p-14 shadow-lg ring-1 transition"
            >
              <div class="absolute top-6 right-5">
                <button
                  phx-click={JS.exec("data-cancel", to: "##{@id}")}
                  type="button"
                  class="-m-3 flex-none p-3 opacity-20 hover:opacity-40"
                  aria-label={gettext("close")}
                >
                  <.icon name="hero-x-mark-solid" class="h-5 w-5" />
                </button>
              </div>
              <div id={"#{@id}-content"}>
                <%= render_slot(@inner_block) %>
              </div>
            </.focus_wrap>
          </div>
        </div>
      </div>
    </div>
    """
  end

  @doc """
  Renders flash notices.

  ## Examples

      <.flash kind={:info} flash={@flash} />
      <.flash kind={:info} phx-mounted={show("#flash")}>Welcome Back!</.flash>
  """
  attr :id, :string, default: "flash", doc: "the optional id of flash container"
  attr :flash, :map, default: %{}, doc: "the map of flash messages to display"
  attr :title, :string, default: nil
  attr :kind, :atom, values: [:info, :error], doc: "used for styling and flash lookup"
  attr :rest, :global, doc: "the arbitrary HTML attributes to add to the flash container"

  slot :inner_block, doc: "the optional inner block that renders the flash message"

  def flash(assigns) do
    ~H"""
    <div
      :if={msg = render_slot(@inner_block) || Phoenix.Flash.get(@flash, @kind)}
      id={@id}
      phx-click={JS.push("lv:clear-flash", value: %{key: @kind}) |> hide("##{@id}")}
      role="alert"
      class={[
        "fixed top-2 right-2 w-80 sm:w-96 z-50 rounded-lg p-3 ring-1",
        @kind == :info && "bg-emerald-50 text-emerald-800 ring-emerald-500 fill-cyan-900",
        @kind == :error && "bg-rose-50 text-rose-900 shadow-md ring-rose-500 fill-rose-900"
      ]}
      {@rest}
    >
      <p :if={@title} class="flex items-center gap-1.5 text-sm font-semibold leading-6">
        <.icon :if={@kind == :info} name="hero-information-circle-mini" class="h-4 w-4" />
        <.icon :if={@kind == :error} name="hero-exclamation-circle-mini" class="h-4 w-4" />
        <%= @title %>
      </p>
      <p class="mt-2 text-sm leading-5"><%= msg %></p>
      <button type="button" class="group absolute top-1 right-1 p-2" aria-label={gettext("close")}>
        <.icon name="hero-x-mark-solid" class="h-5 w-5 opacity-40 group-hover:opacity-70" />
      </button>
    </div>
    """
  end

  @doc """
  Shows the flash group with standard titles and content.

  ## Examples

      <.flash_group flash={@flash} />
  """
  attr :flash, :map, required: true, doc: "the map of flash messages"

  def flash_group(assigns) do
    ~H"""
    <.flash kind={:info} title="Success!" flash={@flash} />
    <.flash kind={:error} title="Error!" flash={@flash} />
    <.flash
      id="client-error"
      kind={:error}
      title="We can't find the internet"
      phx-disconnected={show(".phx-client-error #client-error")}
      phx-connected={hide("#client-error")}
      hidden
    >
      Attempting to reconnect <.icon name="hero-arrow-path" class="ml-1 h-3 w-3 animate-spin" />
    </.flash>

    <.flash
      id="server-error"
      kind={:error}
      title="Something went wrong!"
      phx-disconnected={show(".phx-server-error #server-error")}
      phx-connected={hide("#server-error")}
      hidden
    >
      Hang in there while we get back on track
      <.icon name="hero-arrow-path" class="ml-1 h-3 w-3 animate-spin" />
    </.flash>
    """
  end

  @doc """
  Renders a simple form.

  ## Examples

      <.simple_form for={@form} phx-change="validate" phx-submit="save">
        <.input field={@form[:email]} label="Email"/>
        <.input field={@form[:username]} label="Username" />
        <:actions>
          <.button>Save</.button>
        </:actions>
      </.simple_form>
  """
  attr :for, :any, required: true, doc: "the datastructure for the form"
  attr :as, :any, default: nil, doc: "the server side parameter to collect all input under"

  attr :rest, :global,
    include: ~w(autocomplete name rel action enctype method novalidate target multipart),
    doc: "the arbitrary HTML attributes to apply to the form tag"

  slot :inner_block, required: true
  slot :actions, doc: "the slot for form actions, such as a submit button"

  def simple_form(assigns) do
    ~H"""
    <.form :let={f} for={@for} as={@as} {@rest}>
      <div class="mt-10 space-y-8 bg-white">
        <%= render_slot(@inner_block, f) %>
        <div :for={action <- @actions} class="mt-2 flex items-center justify-between gap-6">
          <%= render_slot(action, f) %>
        </div>
      </div>
    </.form>
    """
  end

  @doc """
  Renders a button.

  ## Examples

      <.button>Send!</.button>
      <.button phx-click="go" class="ml-2">Send!</.button>
  """
  attr :type, :string, default: nil
  attr :class, :string, default: nil
  attr :rest, :global, include: ~w(disabled form name value)

  slot :inner_block, required: true

  def button(assigns) do
    ~H"""
    <button
      type={@type}
      class={[
        "phx-submit-loading:opacity-75 rounded-lg bg-zinc-900 hover:bg-zinc-700 py-2 px-3",
        "text-sm font-semibold leading-6 text-white active:text-white/80",
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </button>
    """
  end

  @doc """
  Renders an input with label and error messages.

  A `Phoenix.HTML.FormField` may be passed as argument,
  which is used to retrieve the input name, id, and values.
  Otherwise all attributes may be passed explicitly.

  ## Types

  This function accepts all HTML input types, considering that:

    * You may also set `type="select"` to render a `<select>` tag

    * `type="checkbox"` is used exclusively to render boolean values

    * For live file uploads, see `Phoenix.Component.live_file_input/1`

  See https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input
  for more information.

  ## Examples

      <.input field={@form[:email]} type="email" />
      <.input name="my-input" errors={["oh no!"]} />
  """
  attr :id, :any, default: nil
  attr :name, :any
  attr :label, :string, default: nil
  attr :value, :any

  attr :type, :string,
    default: "text",
    values: ~w(checkbox color date datetime-local email file hidden month number password
               range radio search select tel text textarea time url week)

  attr :field, Phoenix.HTML.FormField,
    doc: "a form field struct retrieved from the form, for example: @form[:email]"

  attr :errors, :list, default: []
  attr :checked, :boolean, doc: "the checked flag for checkbox inputs"
  attr :prompt, :string, default: nil, doc: "the prompt for select inputs"
  attr :options, :list, doc: "the options to pass to Phoenix.HTML.Form.options_for_select/2"
  attr :multiple, :boolean, default: false, doc: "the multiple flag for select inputs"

  attr :rest, :global,
    include: ~w(accept autocomplete capture cols disabled form list max maxlength min minlength
                multiple pattern placeholder readonly required rows size step)

  slot :inner_block

  def input(%{field: %Phoenix.HTML.FormField{} = field} = assigns) do
    assigns
    |> assign(field: nil, id: assigns.id || field.id)
    |> assign(:errors, Enum.map(field.errors, &translate_error(&1)))
    |> assign_new(:name, fn -> if assigns.multiple, do: field.name <> "[]", else: field.name end)
    |> assign_new(:value, fn -> field.value end)
    |> input()
  end

  def input(%{type: "checkbox", value: value} = assigns) do
    assigns =
      assign_new(assigns, :checked, fn -> Phoenix.HTML.Form.normalize_value("checkbox", value) end)

    ~H"""
    <div phx-feedback-for={@name}>
      <label class="flex items-center gap-4 text-sm leading-6 text-zinc-600">
        <input type="hidden" name={@name} value="false" />
        <input
          type="checkbox"
          id={@id}
          name={@name}
          value="true"
          checked={@checked}
          class="rounded border-zinc-300 text-zinc-900 focus:ring-0"
          {@rest}
        />
        <%= @label %>
      </label>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </div>
    """
  end

  def input(%{type: "select"} = assigns) do
    ~H"""
    <div phx-feedback-for={@name}>
      <.label for={@id}><%= @label %></.label>
      <select
        id={@id}
        name={@name}
        class="mt-2 block w-full rounded-md border border-gray-300 bg-white shadow-sm focus:border-zinc-400 focus:ring-0 sm:text-sm"
        multiple={@multiple}
        {@rest}
      >
        <option :if={@prompt} value=""><%= @prompt %></option>
        <%= Phoenix.HTML.Form.options_for_select(@options, @value) %>
      </select>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </div>
    """
  end

  def input(%{type: "textarea"} = assigns) do
    ~H"""
    <div phx-feedback-for={@name}>
      <.label for={@id}><%= @label %></.label>
      <textarea
        id={@id}
        name={@name}
        class={[
          "mt-2 block w-full rounded-lg text-zinc-900 focus:ring-0 sm:text-sm sm:leading-6",
          "min-h-[6rem] phx-no-feedback:border-zinc-300 phx-no-feedback:focus:border-zinc-400",
          @errors == [] && "border-zinc-300 focus:border-zinc-400",
          @errors != [] && "border-rose-400 focus:border-rose-400"
        ]}
        {@rest}
      ><%= Phoenix.HTML.Form.normalize_value("textarea", @value) %></textarea>
      <.error :for={msg <- @errors}><%= msg %></.error>
    </div>
    """
  end

  # All other inputs text, datetime-local, url, password, etc. are handled here...
  def input(assigns) do
    ~H"""
    <div phx-feedback-for={@name}>
      <.label for={@id}><%= @label %></.label>
      <input
        type={@type}
        name={@name}
        id={@id}
        value={Phoenix.HTML.Form.normalize_value(@type, @value)}
        class={[
          "mt-2 block w-full rounded-lg text-zinc-900 focus:ring-0 sm:text-sm sm:leading-6",
          "phx-no-feedback:border-zinc-300 phx-no-feedback:focus:border-zinc-400",
          @errors == [] && "border-zinc-300 focus:border-zinc-400",
          @errors != [] && "border-rose-400 focus:border-rose-400"
        ]}
        {@rest}
      />
      <.error :for={msg <- @errors}><%= msg %></.error>
    </div>
    """
  end

  @doc """
  Renders a label.
  """
  attr :for, :string, default: nil
  slot :inner_block, required: true

  def label(assigns) do
    ~H"""
    <label for={@for} class="block text-sm font-semibold leading-6 text-zinc-800">
      <%= render_slot(@inner_block) %>
    </label>
    """
  end

  @doc """
  Generates a generic error message.
  """
  slot :inner_block, required: true

  def error(assigns) do
    ~H"""
    <p class="mt-3 flex gap-3 text-sm leading-6 text-rose-600 phx-no-feedback:hidden">
      <.icon name="hero-exclamation-circle-mini" class="mt-0.5 h-5 w-5 flex-none" />
      <%= render_slot(@inner_block) %>
    </p>
    """
  end

  @doc """
  Renders a header with title.
  """
  attr :class, :string, default: nil

  slot :inner_block, required: true
  slot :subtitle
  slot :actions

  def header(assigns) do
    ~H"""
    <header class={[@actions != [] && "flex items-center justify-between gap-6", @class]}>
      <div>
        <h1 class="text-lg font-semibold leading-8 text-zinc-800">
          <%= render_slot(@inner_block) %>
        </h1>
        <p :if={@subtitle != []} class="mt-2 text-sm leading-6 text-zinc-600">
          <%= render_slot(@subtitle) %>
        </p>
      </div>
      <div class="flex-none"><%= render_slot(@actions) %></div>
    </header>
    """
  end

  @doc ~S"""
  Renders a table with generic styling.

  ## Examples

      <.table id="users" rows={@users}>
        <:col :let={user} label="id"><%= user.id %></:col>
        <:col :let={user} label="username"><%= user.username %></:col>
      </.table>
  """
  attr :id, :string, required: true
  attr :rows, :list, required: true
  attr :row_id, :any, default: nil, doc: "the function for generating the row id"
  attr :row_click, :any, default: nil, doc: "the function for handling phx-click on each row"

  attr :row_item, :any,
    default: &Function.identity/1,
    doc: "the function for mapping each row before calling the :col and :action slots"

  slot :col, required: true do
    attr :label, :string
  end

  slot :action, doc: "the slot for showing user actions in the last table column"

  def table(assigns) do
    assigns =
      with %{rows: %Phoenix.LiveView.LiveStream{}} <- assigns do
        assign(assigns, row_id: assigns.row_id || fn {id, _item} -> id end)
      end

    ~H"""
    <div class="overflow-y-auto px-4 sm:overflow-visible sm:px-0">
      <table class="w-[40rem] mt-11 sm:w-full">
        <thead class="text-sm text-left leading-6 text-zinc-500">
          <tr>
            <th :for={col <- @col} class="p-0 pr-6 pb-4 font-normal"><%= col[:label] %></th>
            <th class="relative p-0 pb-4"><span class="sr-only"><%= gettext("Actions") %></span></th>
          </tr>
        </thead>
        <tbody
          id={@id}
          phx-update={match?(%Phoenix.LiveView.LiveStream{}, @rows) && "stream"}
          class="relative divide-y divide-zinc-100 border-t border-zinc-200 text-sm leading-6 text-zinc-700"
        >
          <tr :for={row <- @rows} id={@row_id && @row_id.(row)} class="group hover:bg-zinc-50">
            <td
              :for={{col, i} <- Enum.with_index(@col)}
              phx-click={@row_click && @row_click.(row)}
              class={["relative p-0", @row_click && "hover:cursor-pointer"]}
            >
              <div class="block py-4 pr-6">
                <span class="absolute -inset-y-px right-0 -left-4 group-hover:bg-zinc-50 sm:rounded-l-xl" />
                <span class={["relative", i == 0 && "font-semibold text-zinc-900"]}>
                  <%= render_slot(col, @row_item.(row)) %>
                </span>
              </div>
            </td>
            <td :if={@action != []} class="relative w-14 p-0">
              <div class="relative whitespace-nowrap py-4 text-right text-sm font-medium">
                <span class="absolute -inset-y-px -right-4 left-0 group-hover:bg-zinc-50 sm:rounded-r-xl" />
                <span
                  :for={action <- @action}
                  class="relative ml-4 font-semibold leading-6 text-zinc-900 hover:text-zinc-700"
                >
                  <%= render_slot(action, @row_item.(row)) %>
                </span>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    """
  end

  @doc """
  Renders a data list.

  ## Examples

      <.list>
        <:item title="Title"><%= @post.title %></:item>
        <:item title="Views"><%= @post.views %></:item>
      </.list>
  """
  slot :item, required: true do
    attr :title, :string, required: true
  end

  def list(assigns) do
    ~H"""
    <div class="mt-14">
      <dl class="-my-4 divide-y divide-zinc-100">
        <div :for={item <- @item} class="flex gap-4 py-4 text-sm leading-6 sm:gap-8">
          <dt class="w-1/4 flex-none text-zinc-500"><%= item.title %></dt>
          <dd class="text-zinc-700"><%= render_slot(item) %></dd>
        </div>
      </dl>
    </div>
    """
  end

  @doc """
  Renders a back navigation link.

  ## Examples

      <.back navigate={~p"/posts"}>Back to posts</.back>
  """
  attr :navigate, :any, required: true
  slot :inner_block, required: true

  def back(assigns) do
    ~H"""
    <div class="mt-16">
      <.link
        navigate={@navigate}
        class="text-sm font-semibold leading-6 text-zinc-900 hover:text-zinc-700"
      >
        <.icon name="hero-arrow-left-solid" class="h-3 w-3" />
        <%= render_slot(@inner_block) %>
      </.link>
    </div>
    """
  end

  @doc """
  Renders a [Heroicon](https://heroicons.com).

  Heroicons come in three styles – outline, solid, and mini.
  By default, the outline style is used, but solid and mini may
  be applied by using the `-solid` and `-mini` suffix.

  You can customize the size and colors of the icons by setting
  width, height, and background color classes.

  Icons are extracted from your `assets/vendor/heroicons` directory and bundled
  within your compiled app.css by the plugin in your `assets/tailwind.config.js`.

  ## Examples

      <.icon name="hero-x-mark-solid" />
      <.icon name="hero-arrow-path" class="ml-1 w-3 h-3 animate-spin" />
  """
  attr :name, :string, required: true
  attr :class, :string, default: nil

  def icon(%{name: "hero-" <> _} = assigns) do
    ~H"""
    <span class={[@name, @class]} />
    """
  end

  ## JS Commands

  def show(js \\ %JS{}, selector) do
    JS.show(js,
      to: selector,
      transition:
        {"transition-all transform ease-out duration-300",
         "opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95",
         "opacity-100 translate-y-0 sm:scale-100"}
    )
  end

  def hide(js \\ %JS{}, selector) do
    JS.hide(js,
      to: selector,
      time: 200,
      transition:
        {"transition-all transform ease-in duration-200",
         "opacity-100 translate-y-0 sm:scale-100",
         "opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"}
    )
  end

  def show_modal(js \\ %JS{}, id) when is_binary(id) do
    js
    |> JS.show(to: "##{id}")
    |> JS.show(
      to: "##{id}-bg",
      transition: {"transition-all transform ease-out duration-300", "opacity-0", "opacity-100"}
    )
    |> show("##{id}-container")
    |> JS.add_class("overflow-hidden", to: "body")
    |> JS.focus_first(to: "##{id}-content")
  end

  def hide_modal(js \\ %JS{}, id) do
    js
    |> JS.hide(
      to: "##{id}-bg",
      transition: {"transition-all transform ease-in duration-200", "opacity-100", "opacity-0"}
    )
    |> hide("##{id}-container")
    |> JS.hide(to: "##{id}", transition: {"block", "block", "hidden"})
    |> JS.remove_class("overflow-hidden", to: "body")
    |> JS.pop_focus()
  end

  @doc """
  Translates an error message using gettext.
  """
  def translate_error({msg, opts}) do
    # When using gettext, we typically pass the strings we want
    # to translate as a static argument:
    #
    #     # Translate the number of files with plural rules
    #     dngettext("errors", "1 file", "%{count} files", count)
    #
    # However the error messages in our forms and APIs are generated
    # dynamically, so we need to translate them by calling Gettext
    # with our gettext backend as first argument. Translations are
    # available in the errors.po file (as we use the "errors" domain).
    if count = opts[:count] do
      Gettext.dngettext(GceWeb.Gettext, "errors", msg, msg, count, opts)
    else
      Gettext.dgettext(GceWeb.Gettext, "errors", msg, opts)
    end
  end

  @doc """
  Translates the errors for a field from a keyword list of errors.
  """
  def translate_errors(errors, field) when is_list(errors) do
    for {^field, {msg, opts}} <- errors, do: translate_error({msg, opts})
  end
end
