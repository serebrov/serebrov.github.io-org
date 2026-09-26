/*
 * Reader features for pages that ox-html exports:
 * folding sections and copy buttons for code.
 * Code colors come from htmlize at build time (see publish.el).
 */

/** Return all section containers that ox-html makes for headings. */
function sections() {
  return document.querySelectorAll('[id^="outline-container-"]');
}

/**
 * Make each section heading open and close its section.
 * A heading with the org tag :folded: starts closed.
 */
function setupFolding() {
  sections().forEach((section) => {
    const heading = section.firstElementChild;
    heading.classList.add('fold-toggle');
    heading.addEventListener('click', (event) => {
      if (!event.target.closest('a')) section.classList.toggle('is-folded');
    });
    if (heading.querySelector('.tag .folded')) section.classList.add('is-folded');
  });
}

/** Open all folded sections that contain the element in the URL hash. */
function revealHashTarget() {
  const target = location.hash && document.getElementById(decodeURIComponent(location.hash.slice(1)));
  if (!target) return;
  for (let folded = target.closest('.is-folded'); folded; folded = folded.closest('.is-folded')) {
    folded.classList.remove('is-folded');
  }
  target.scrollIntoView();
}

/** Put a button over each org source block that copies its text. */
function setupCopyButtons() {
  document.querySelectorAll('pre.src').forEach((pre) => {
    const wrapper = document.createElement('div');
    wrapper.className = 'code-block';
    pre.replaceWith(wrapper);

    const button = document.createElement('button');
    button.className = 'copy-button';
    button.textContent = 'Copy';
    button.addEventListener('click', async () => {
      await navigator.clipboard.writeText(pre.textContent);
      button.textContent = 'Copied';
      setTimeout(() => (button.textContent = 'Copy'), 1500);
    });
    wrapper.append(pre, button);
  });
}

setupFolding();
setupCopyButtons();
revealHashTarget();
window.addEventListener('hashchange', revealHashTarget);
