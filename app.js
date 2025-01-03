"use strict";

const BASE = 'https://braille-ja.herokuapp.com';
const TRANSLATE_ENDPOINT = `${BASE}/translate`;
const PING_ENDPOINT = `${BASE}/ping`;
const BRAILLE_PATTERN = /\p{Script=Braille}+/gu;
const $ = id => document.getElementById(id);
const queryParam = obj => new URLSearchParams(obj).toString();

document.addEventListener('DOMContentLoaded', () => {
    $('translate').addEventListener('click', async _ => {
        const text = $('original').value;
        const url = TRANSLATE_ENDPOINT + '?' + queryParam({ text });
        const obj = await (await fetch(url)).json();
	const marked = obj.translated.
	      replace(BRAILLE_PATTERN, "<span class='braille-char'>$&</span>");
	$('translated').innerHTML = marked;
    });
});

await fetch(PING_ENDPOINT); // ensure to awake Heroku
