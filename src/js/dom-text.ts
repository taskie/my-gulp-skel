export function getText(node: HTMLElement): string {
    if (node.innerText) return node.innerText;
    if (node.textContent) return node.textContent;
    return null;
}

export function setText(node: HTMLElement, text: string) {
    if (node.innerText) {
	node.innerText = text;
    } else if (node.textContent) {
	node.textContent = text;
    }
}
