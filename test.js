#!/usr/bin/env node


var SDL = require('./src/SDL.js');
var SDL_events = require('./src/SDL_events.js');
var SDL_image  = require('./src/SDL_image.js');
var SDL_rect   = require('./src/SDL_rect.js');
var SDL_render = require('./src/SDL_render.js');
var SDL_video  = require('./src/SDL_video.js');



SDL.SDL_Init(SDL.SDL_INIT_EVERYTHING);


var window   = SDL_video.SDL_CreateWindow('Hello World', 100, 100, 640, 480, SDL_video.SDL_WindowFlags.SDL_WINDOW_SHOWN | SDL_video.SDL_WindowFlags.SDL_WINDOW_RESIZABLE);
var renderer = SDL_render.SDL_CreateRenderer(window, -1, SDL_render.RENDERER_ACCELERATED);

var surface  = SDL_image.IMG_Load(__dirname + '/test.png');
var texture  = SDL_render.SDL_CreateTextureFromSurface(renderer, surface);

var src = new SDL_rect.SDL_Rect({
	x: 10,
	y: 10,
	w: 32,
	h: 32
});

var dst = new SDL_rect.SDL_Rect({
	x: 32,
	y: 32,
	w: 128,
	h: 128
});


if (window.isNull() || renderer.isNull()) {

	console.log('SHIT, window or renderer is null');

} else {



}



var fx = 1;
var fy = 1;
var r  = 64;
var g  = 64;
var b  = 80;
var a  = 255;
var randomize = false;


var main = setInterval(function() {

	if (randomize === true) {

		r = Math.random() * 255 | 0;
		g = Math.random() * 255 | 0;
		b = Math.random() * 255 | 0;
		a = Math.random() * 255 | 0;

		randomize = false;

	}

	if (dst.x <= 0 || dst.x >= (800 - 128)) fx = -1 * fx;
	if (dst.y <= 0 || dst.y >= (600 - 128)) fy = -1 * fy;

	dst.x = dst.x + fx * 5;
	dst.y = dst.y + fy * 5;


	SDL_render.SDL_SetRenderDrawColor(renderer, r, g, b, a);



	SDL_render.SDL_RenderClear(renderer);

	SDL_render.SDL_RenderCopy(renderer, texture, null, dst.ref());

	SDL_render.SDL_RenderPresent(renderer);



	var event  = new SDL_events.SDL_Event;
	var quit   = false;
	var result = SDL_events.SDL_PollEvent(event.ref());

	if (result) {

		if (event.type === SDL_events.SDL_EventType.SDL_QUIT) {
			quit = true;
		} else if (event.type === SDL_events.SDL_EventType.SDL_MOUSEMOTION) {
			randomize = !randomize;

console.log(event.motion.x, event.motion.y);

		}



		if (quit === true) {
			clearInterval(main);
		}

	}

}, 1000 / 60);

