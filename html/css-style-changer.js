<!--meta: http-equiv='Content-Script-Type' content='text/javascript'  //-->
<!--html: funcname='nextStylesheet', linkto='menu', linkfor='onClick' //-->

const stylesheets = [`${cssdir}colours.css`, `${cssdir}webdark.css`,
    `${cssdir}pureblk.css`, `${cssdir}bwprint.css`, `${cssdir}pdfgray.css`,
    `${cssdir}onpaper.css`, `${cssdir}pdfcool.css`, `${cssdir}pdfwarm.css`];

let currentIndex = 0;

function nextStylesheet() {
    currentIndex = (currentIndex + 1) % stylesheets.length; 
    document.getElementById('customStylesheet').setAttribute('href',
        stylesheets[currentIndex]);
}
