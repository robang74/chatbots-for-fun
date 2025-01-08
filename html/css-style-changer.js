const stylesheets = [`${cssdir}colours.css`, `${cssdir}webdark.css`,
    `${cssdir}pureblk.css`, `${cssdir}bwprint.css`, `${cssdir}pdfgray.css`,
    `${cssdir}pdfcool.css`, `${cssdir}pdfwarm.css`];

let currentIndex = 0;

function nextStylesheet() {
    currentIndex = (currentIndex + 1) % stylesheets.length; 
    document.getElementById('customStylesheet').setAttribute('href',
        stylesheets[currentIndex]);
}
