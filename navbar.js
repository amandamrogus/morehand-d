

class Navbar extends HTMLElement {
    constructor() {
        super();
    }

    connectedCallback() {
        this.innerHTML = `<head>
    <title></title>

    </head>
    <body >
           <section class="common-background header-parent transcription-section">
        <ul class="toc toc_front">Other Links on this Website</ul>
        <ul> <li><a href="nextpage.html" >Click Here to Return to Top of This Page</a></li>
            <li class="toc">
                <a class="toc toc_0" href="index.html">
                   Click Here to Return to Home Page
                </a>
            </li>

            <li><a href="transcription.html" >Rogus True Transcription of Hand D Pages</a></li>
    <li><a href="links.html">Shakespearean Paleography Links</a></li>
        </ul>
    </section>
    </body>`
    }
}

customElements.define("navbar-component", Navbar);
