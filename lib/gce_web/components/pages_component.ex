defmodule GceWeb.PagesComponent do
  use GceWeb, :html

  def page_header(assigns) do
    ~H"""
    <style data-emotion-css="b3y1vt">
      .css-b3y1vt{background-color:#772858;padding:1.45rem 0;color:#F8EBF2;background-image:url("/static/topo.svg");background-position:50% 50%;background-repeat:no-repeat;}
    </style>
    <header class="css-b3y1vt">
      <style data-emotion-css="1bwh1n3">
        .css-1bwh1n3{max-width:42rem;margin-left:auto;margin-right:auto;padding-right:1.45rem;padding-left:1.45rem;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;padding:0;}
      </style>
      <div class="css-1bwh1n3">
        <style data-emotion-css="14yq2xz">
          .css-14yq2xz{-webkit-text-decoration:none;text-decoration:none;color:white;cursor:pointer;}.css-14yq2xz:link,.css-14yq2xz:visited,.css-14yq2xz:hover,.css-14yq2xz:focus,.css-14yq2xz:active{color:white;}
        </style>
        <a href="/" class="css-14yq2xz">
          <style data-emotion-css="itk57b">
            .css-itk57b{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;background:#772858;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;text-transform:uppercase;-webkit-letter-spacing:0.5ch;-moz-letter-spacing:0.5ch;-ms-letter-spacing:0.5ch;letter-spacing:0.5ch;line-height:0.95;margin:0 0 0 0.725rem;padding:0.725rem 0.725rem;border-right:0.1em solid #F67465;font-size:1.5rem;}.css-itk57b span{padding-left:1.5ch;}.css-itk57b .l{padding-left:0;}
          </style>
          <h1 class="ff-odudomono-r css-itk57b">
            <span>Gig</span> <span class="l">City</span>
            <span class="l">Eli</span><span>xir</span>
          </h1>
        </a>
        <style data-emotion-css="1nwpw4f">
          .css-1nwpw4f{text-transform:uppercase;-webkit-letter-spacing:0.3333ch;-moz-letter-spacing:0.3333ch;-ms-letter-spacing:0.3333ch;letter-spacing:0.3333ch;margin:0.725rem;padding:0.725rem;background-color:#772858;font-size:0.75rem;margin:0 !important;padding:1em !important;}@media screen and (min-width:42rem){.css-1nwpw4f{font-size:1rem;}}@supports (display:grid){@media screen and (min-width:42rem){.css-1nwpw4f{margin:4.35rem 0 0;grid-area:top;padding:2.9rem 2.9rem 1.45rem;}}}
        </style>
        <div class="ff-odudomono-l css-1nwpw4f">
          <span class="c-peach">Nerves Conf</span>
          May 9 <br />
          <span class="c-peach">GCE Training</span>
          May 9 <br />
          <span class="c-peach">GCE Conference</span>
          May 10-11 <br />
          <style data-emotion-css="1rk15gs">
            .css-1rk15gs{-webkit-letter-spacing:0;-moz-letter-spacing:0;-ms-letter-spacing:0;letter-spacing:0;}@media screen and (min-width:42rem){.css-1rk15gs{-webkit-letter-spacing:inherit;-moz-letter-spacing:inherit;-ms-letter-spacing:inherit;letter-spacing:inherit;}}
          </style>
          <span class="css-1rk15gs">The Edney Innovation Center</span>
          <br />Chattanooga, TN
        </div>
      </div>
    </header>
    """
  end

  def page_footer(assigns) do
    ~H"""
    <footer class="css-0">
      <style data-emotion-css="w2eaxt">
        .css-w2eaxt {
            justify-self: end;
            text-align: center;
            border-bottom: 0.725rem solid #F8EBF2;
            padding: 0.725rem;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-flex-wrap: wrap;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
        }

        .css-w2eaxt > a {
            padding: 0.725rem;
        }

        .css-w2eaxt > a:link {
            color: #772858;
        }

        .css-w2eaxt > a:visited {
            color: #943E60;
        }

        .css-w2eaxt > a:hover, .css-w2eaxt > a:focus {
            color: #F67465;
        }

        .css-w2eaxt > a:active {
            color: #3B3D40;
        }
      </style>
      <nav class="ff-odudomono-r css-w2eaxt">
        <div id="skip-to-nav"></div>
        <a href="/">Home</a>
        <a href="/about">About</a>
        <a href="/schedule">Schedule</a>
        <a href="/coc">CoC</a>
        <a href="/contact">Contact</a>
        <a href="https://2018.gigcityelixir.com/">2018</a>
        <a href="https://2019.gigcityelixir.com">2019</a>
      </nav>
    </footer>
    """
  end

  def speakers_sponsors(assigns),
    do: ~H"""
    <style data-emotion-css="11bw24s">
      .css-11bw24s {
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          text-align: center;
          font-size: 1.45rem;
      }
    </style>
    <section class="css-11bw24s">
      <p>
        ...and sponsors, get in touch with us! <br />
        <br />
        <style data-emotion-css="15pmwzr">
          .css-15pmwzr {
              border-radius: 3px;
              cursor: pointer;
              font-family: "OdudoMono-Regular", "Menlo", sans-serif;
              font-size: 1.45rem;
              padding: 1.0875rem;
              width: 100%;
              display: block;
              text-align: center;
              -webkit-text-decoration: none;
              text-decoration: none;
              border: 2px solid currentColor;
              color: currentColor;
              color: white;
          }

          .css-15pmwzr:link, .css-15pmwzr:visited {
              color: white;
          }

          .css-15pmwzr:hover, .css-15pmwzr:focus {
              background-color: #943E60;
          }

          .css-15pmwzr:active {
              background-color: #432D3A;
              -webkit-transform: translate(0, 1px);
              -ms-transform: translate(0, 1px);
              transform: translate(0, 1px);
          }
        </style>
        <a href="mailto:maggie@grox.io" class="css-15pmwzr">Email us at maggie@grox.io</a>
      </p>
      <p>
        See you in Chattanooga!
      </p>
    </section>
    """
end
