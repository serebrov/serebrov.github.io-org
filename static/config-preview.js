/*
 * Preview for links to .config files: a click shows the file content in a
 * dialog with a download link.  A post loads this script with
 * #+HTML_HEAD_EXTRA: <script defer src="/static/config-preview.js"></script>
 */

/** Return the preview dialog, and make it on the first call. */
function previewDialog() {
  let dialog = document.querySelector('dialog.file-preview');
  if (!dialog) {
    dialog = document.createElement('dialog');
    dialog.className = 'file-preview';
    dialog.innerHTML =
      '<div class="file-preview-bar"><a download></a>' +
      '<form method="dialog"><button autofocus>Close</button></form></div><pre></pre>';
    // A click on the backdrop (outside the dialog box) closes the dialog.
    dialog.addEventListener('click', (event) => {
      if (event.target === dialog) dialog.close();
    });
    document.body.append(dialog);
  }
  return dialog;
}

/** Show the content of the file at URL, or open the file if it does not load. */
async function showPreview(url) {
  const response = await fetch(url);
  if (!response.ok) {
    location.href = url;
    return;
  }
  const dialog = previewDialog();
  const download = dialog.querySelector('a[download]');
  download.href = url;
  download.textContent = `Download (${url.split('/').pop()})`;
  dialog.querySelector('pre').textContent = await response.text();
  dialog.showModal();
}

function setupLinkClick(link) {
  link.addEventListener('click', (event) => {
    event.preventDefault();
    showPreview(link.href);
  });
}

// For 2015-05-20-cloudwatch-setup.org post
document.querySelectorAll('a[href$="config"]').forEach(setupLinkClick);
// For 2016-06-10-scaleway-docker-deployment.org post
document.querySelectorAll('a[href$=".sh"]').forEach(setupLinkClick);
document.querySelectorAll('a[href$="msmtprc"]').forEach(setupLinkClick);
