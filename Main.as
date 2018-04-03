package  {
	import flash.utils.Timer;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.net.*;
	import flash.display.Loader;
	
	public class Main extends MovieClip{
		var timer:Timer;
		var ar:Array;
		var arx:Array;
		var efecto:int = 4;
		var ult:int = 0;
		var sig:int = 0;
		var loader:Loader;
		var request:URLRequest;
		var vid:String;
		var v:simpleFlvs;
		public function Main() {
			stop();
			ar = new Array();
			ar[0] = "cuadrado";
			ar[1] = "cuadradox";
			ar[2] = "cuadradoy";
			ar[3] = "cuadradoz";
			ar[4] = "cuadradoxy";
			arx = new Array();
			arx[0] = "cuadrado2";
			arx[1] = "cuadradox2";
			arx[2] = "cuadradoy2";
			arx[3] = "cuadradoz2";
			arx[4] = "cuadradoxy2";
			timer = new Timer(16.6);
			timer.addEventListener(TimerEvent.TIMER, onTimer);
			btn_Juegos.addEventListener(MouseEvent.CLICK, Juegos);
			btn_Inicio.addEventListener(MouseEvent.CLICK, Inicio);
			btn_Practicas.addEventListener(MouseEvent.CLICK, Practicas);
			btn_Multimedia.addEventListener(MouseEvent.CLICK, Multimedia);
			btn_Conclusion.addEventListener(MouseEvent.CLICK, Conclusion);
			cuadradox2.addEventListener(MouseEvent.CLICK, gotoJuegos);
			cuadradoy2.addEventListener(MouseEvent.CLICK, gotoPracticas);
			cuadradoz2.addEventListener(MouseEvent.CLICK, gotoMultimedia);
			cuadradoxy2.addEventListener(MouseEvent.CLICK, gotoConclusion);
		}
		
		private function gotoJuegos(evt:MouseEvent){
			gotoAndStop(2);
			btn_Volver.addEventListener(MouseEvent.CLICK, Volver);
			btn_Pika.addEventListener(MouseEvent.CLICK, goPika);
			btn_Puzzle.addEventListener(MouseEvent.CLICK, goPuzzle);
			btn_Sonic.addEventListener(MouseEvent.CLICK, goSonic);
		}
		
		private function goPika(evt:MouseEvent){
			var v:URLRequest = new URLRequest("Practica 4x.html");
			navigateToURL(v);
		}
		
		private function goPuzzle(evt:MouseEvent){
			var v:URLRequest = new URLRequest("PuzzleV2.html");
			navigateToURL(v);
		}
		
		private function goSonic(evt:MouseEvent){
			var v:URLRequest = new URLRequest("SonicGameV8.html");
			navigateToURL(v);
		}
		
		private function gotoPracticas(evt:MouseEvent){
			gotoAndStop(3);
			btn_Volver.addEventListener(MouseEvent.CLICK, Volver);
			btn_p1.addEventListener(MouseEvent.CLICK, p1);
			btn_p2.addEventListener(MouseEvent.CLICK, p2);
			btn_p3.addEventListener(MouseEvent.CLICK, p3);
			btn_p4.addEventListener(MouseEvent.CLICK, p4);
			btn_p5.addEventListener(MouseEvent.CLICK, p5);
			btn_p6.addEventListener(MouseEvent.CLICK, p6);
			btn_p7.addEventListener(MouseEvent.CLICK, p7);
			btn_p8.addEventListener(MouseEvent.CLICK, p8);
			btn_p9.addEventListener(MouseEvent.CLICK, p9);
			btn_p10.addEventListener(MouseEvent.CLICK, p10);
			btn_p11.addEventListener(MouseEvent.CLICK, p11);
		}
		private function gotoMultimedia(evt:MouseEvent){
			gotoAndStop(4);
			btn_Volver.addEventListener(MouseEvent.CLICK, Volver);
			btn_Videos.addEventListener(MouseEvent.CLICK, playVideos);
			btn_Galeria.addEventListener(MouseEvent.CLICK, playGaleria);
		}
			
		private function playVideos(evt:MouseEvent){
			gotoAndStop(6);
			btn_Volverx.addEventListener(MouseEvent.CLICK, Volverx);
			loader = new Loader();
			request = new URLRequest("GaleriaVideos.swf"); 
			loader.load(request);
			addChild(loader);
			loader.scaleX = .94;
			loader.scaleY = .94;
			loader.x += 118;
		}
		
		private function playGaleria(evt:MouseEvent){
			gotoAndStop(6);
			btn_Volverx.addEventListener(MouseEvent.CLICK, Volverx);
			loader = new Loader();
			request = new URLRequest("Galeria.swf"); 
			loader.load(request);
			addChild(loader);
			loader.scaleX = .8;
			loader.scaleY = .8;
			loader.x += 85;
		}
		
		private function Volverx(evt:MouseEvent){
			removeChild(loader);
			gotoAndStop(4);
			btn_Volver.addEventListener(MouseEvent.CLICK, Volver);
			btn_Videos.addEventListener(MouseEvent.CLICK, playVideos);
			btn_Galeria.addEventListener(MouseEvent.CLICK, playGaleria);
		}
		
		
		private function gotoConclusion(evt:MouseEvent){
			gotoAndStop(5);
			btn_Volverz.addEventListener(MouseEvent.CLICK, Volverz);
			vid = "Conclusion.mp4";
			v = new simpleFlvs();
			v.playMyFlv(vid);
			v.y = 150;
			v.x = 150;
			addChild(v);
		}
		
		private function Volverz(evt:MouseEvent){
			v._stream.pause();
			removeChild(v);
			gotoAndStop(2);
			v = new simpleFlvs();
			gotoAndStop(1);
			timer.addEventListener(TimerEvent.TIMER, onTimer);
			btn_Juegos.addEventListener(MouseEvent.CLICK, Juegos);
			btn_Inicio.addEventListener(MouseEvent.CLICK, Inicio);
			btn_Practicas.addEventListener(MouseEvent.CLICK, Practicas);
			btn_Multimedia.addEventListener(MouseEvent.CLICK, Multimedia);
			btn_Conclusion.addEventListener(MouseEvent.CLICK, Conclusion);
			cuadradox2.addEventListener(MouseEvent.CLICK, gotoJuegos);
			cuadradoy2.addEventListener(MouseEvent.CLICK, gotoPracticas);
			cuadradoz2.addEventListener(MouseEvent.CLICK, gotoMultimedia);
			cuadradoxy2.addEventListener(MouseEvent.CLICK, gotoConclusion);
			for(var i:int = 0; i < ar.length; i++){
				if(i != 0){
					this[arx[i]].visible = false;
				}else{
					this[arx[i]].visible = true;
				}
			}
			ult = 0;
		}
		
		private function p1(evt:MouseEvent){
			var v:URLRequest = new URLRequest("practica 1.html");
			navigateToURL(v);
		}
		
		private function p2(evt:MouseEvent){
			var v:URLRequest = new URLRequest("practica 2.html");
			navigateToURL(v);
		}
		private function p3(evt:MouseEvent){
			var v:URLRequest = new URLRequest("practica_3.html");
			navigateToURL(v);
		}
		private function p4(evt:MouseEvent){
			var v:URLRequest = new URLRequest("practica 5.html");
			navigateToURL(v);
		}
		private function p5(evt:MouseEvent){
			var v:URLRequest = new URLRequest("practica 5x.html");
			navigateToURL(v);
		}
		private function p6(evt:MouseEvent){
			var v:URLRequest = new URLRequest("practica 6.html");
			navigateToURL(v);
		}
		private function p7(evt:MouseEvent){
			var v:URLRequest = new URLRequest("Tarea_2.html");
			navigateToURL(v);
		}
		private function p8(evt:MouseEvent){
			var v:URLRequest = new URLRequest("Tarea 3.html");
			navigateToURL(v);
		}
		
		private function p9(evt:MouseEvent){
			var v:URLRequest = new URLRequest("Tarea_4.html");
			navigateToURL(v);
		}
		
		private function p10(evt:MouseEvent){
			var v:URLRequest = new URLRequest("Practica_8.html");
			navigateToURL(v);
		}
		
		private function p11(evt:MouseEvent){
			var v:URLRequest = new URLRequest("Practica 6x.html");
			navigateToURL(v);
		}
		
		private function Volver(evt:MouseEvent){
			gotoAndStop(1);
			timer.addEventListener(TimerEvent.TIMER, onTimer);
			btn_Juegos.addEventListener(MouseEvent.CLICK, Juegos);
			btn_Inicio.addEventListener(MouseEvent.CLICK, Inicio);
			btn_Practicas.addEventListener(MouseEvent.CLICK, Practicas);
			btn_Multimedia.addEventListener(MouseEvent.CLICK, Multimedia);
			btn_Conclusion.addEventListener(MouseEvent.CLICK, Conclusion);
			cuadradox2.addEventListener(MouseEvent.CLICK, gotoJuegos);
			cuadradoy2.addEventListener(MouseEvent.CLICK, gotoPracticas);
			cuadradoz2.addEventListener(MouseEvent.CLICK, gotoMultimedia);
			cuadradoxy2.addEventListener(MouseEvent.CLICK, gotoConclusion);
			for(var i:int = 0; i < ar.length; i++){
				if(i != 0){
					this[arx[i]].visible = false;
				}else{
					this[arx[i]].visible = true;
				}
			}
			ult = 0;
		}
		
		private function Juegos(evt:MouseEvent){
			if(timer.running == false && ult != 1){
				sig = 1;
				if(efecto == 1){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 0;
					this[ar[sig]].rotationY = 270;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].x = 900;
					this[ar[sig]].y = 0;
					this[ar[sig]].visible = true;
				}
				if(efecto == 2){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 731;
					this[ar[sig]].rotationY = 90;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].y = 0;
					this[ar[sig]].x = 170.35;
					this[ar[sig]].visible = true;
				}
				if(efecto == 3){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 0;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].rotationX = 270;
					this[ar[sig]].x = 170.35;
					this[ar[sig]].y = 700;
					this[ar[sig]].visible = true;
				}
				if(efecto == 4){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 300;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].x = -1000;
					this[ar[sig]].y = 0;
					this[ar[sig]].visible = true;
				}
				timer.start();
			}
		}
		
		private function Inicio(evt:MouseEvent){
			if(timer.running == false && ult != 0){
				sig = 0;
				if(efecto == 1){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 0;
					this[ar[sig]].rotationY = 270;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].x = 900;
					this[ar[sig]].y = 0;
					this[ar[sig]].visible = true;
				}
				if(efecto == 2){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 731;
					this[ar[sig]].rotationY = 90;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].y = 0;
					this[ar[sig]].x = 170.35;
					this[ar[sig]].visible = true;
				}
				if(efecto == 3){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 0;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].rotationX = 270;
					this[ar[sig]].x = 170.35;
					this[ar[sig]].y = 700;
					this[ar[sig]].visible = true;
				}
				if(efecto == 4){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 300;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].x = -1000;
					this[ar[sig]].y = 0;
					this[ar[sig]].visible = true;
				}
				timer.start();
			}
		}
		
		private function Practicas(evt:MouseEvent){
			if(timer.running == false && ult != 2){
				sig = 2;
				if(efecto == 1){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 0;
					this[ar[sig]].rotationY = 270;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].x = 900;
					this[ar[sig]].y = 0;
					this[ar[sig]].visible = true;
				}
				if(efecto == 2){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 731;
					this[ar[sig]].rotationY = 90;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].y = 0;
					this[ar[sig]].x = 170.35;
					this[ar[sig]].visible = true;
				}
				if(efecto == 3){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 0;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].rotationX = 270;
					this[ar[sig]].x = 170.35;
					this[ar[sig]].y = 700;
					this[ar[sig]].visible = true;
				}
				if(efecto == 4){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 300;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].x = -1000;
					this[ar[sig]].y = 0;
					this[ar[sig]].visible = true;
				}
				timer.start();
			}
		}
		
		private function Multimedia(evt:MouseEvent){
			if(timer.running == false && ult != 3){
				sig = 3;
				if(efecto == 1){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 0;
					this[ar[sig]].rotationY = 270;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].x = 900;
					this[ar[sig]].y = 0;
					this[ar[sig]].visible = true;
				}
				if(efecto == 2){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 731;
					this[ar[sig]].rotationY = 90;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].y = 0;
					this[ar[sig]].x = 900-731;
					this[ar[sig]].visible = true;
				}
				if(efecto == 3){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 0;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].rotationX = 270;
					this[ar[sig]].x = 900-731;
					this[ar[sig]].y = 700;
					this[ar[sig]].visible = true;
				}
				if(efecto == 4){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 300;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].x = -1000;
					this[ar[sig]].y = 0;
					this[ar[sig]].visible = true;
				}
				timer.start();
			}
		}
		
		private function Conclusion(evt:MouseEvent){
			if(timer.running == false && ult != 4){
				sig = 4;
				if(efecto == 1){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 0;
					this[ar[sig]].rotationY = 270;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].x = 900;
					this[ar[sig]].y = 0;
					this[ar[sig]].visible = true;
				}
				if(efecto == 2){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 731;
					this[ar[sig]].rotationY = 90;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].y = 0;
					this[ar[sig]].x = 170.35;
					this[ar[sig]].visible = true;
				}
				if(efecto == 3){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 0;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].rotationX = 270;
					this[ar[sig]].x = 170.35;
					this[ar[sig]].y = 700;
					this[ar[sig]].visible = true;
				}
				if(efecto == 4){
					this[arx[ult]].visible = false;
					this[ar[sig]].z = 300;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].rotationX = 0;
					this[ar[sig]].x = -1000;
					this[ar[sig]].y = 0;
					this[ar[sig]].visible = true;
				}
				timer.start();
			}
		}
		
		private function onTimer(t:TimerEvent){
			if(efecto == 1 && ult != sig){
				if(this[ar[ult]].rotationY < 90){
					this[ar[ult]].rotationY +=1;
					this[ar[ult]].z += 8.12;
					this[ar[sig]].rotationY +=1;
					this[ar[sig]].x -= 8.12;
					if(this[ar[ult]].rotationY == 77){
						this[ar[ult]].visible = false;
					}else{
						this[ar[ult]].x = this[ar[sig]].x-this[ar[ult]].width-60;
					}
				}else{
					this[arx[sig]].visible = true;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].x = 170.35;
					timer.stop();
					efecto = 2;
					ult = sig;
				}
			}
			if(efecto == 2 && ult != sig){
				if(this[ar[sig]].rotationY > 0){
					this[ar[sig]].z -= 8.12
					this[ar[sig]].rotationY -=1;
					this[ar[ult]].rotationY -=1;
					this[ar[ult]].x += 8.12+4;
					if(this[ar[ult]].rotationY == -70){
						this[ar[ult]].visible = false;
					}
				}else{
					this[arx[sig]].visible = true;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].x = 170.35;
					timer.stop();
					efecto = 3;
					ult = sig;
				}
			}
			if(efecto == 3 && ult != sig){
				if(this[ar[ult]].rotationX < 90){
					this[ar[ult]].rotationX +=1;
					this[ar[ult]].y -= 7.77;
					this[ar[ult]].z += 7.77;
					this[ar[sig]].rotationX +=1;
					this[ar[sig]].y -= 7.77;
				}else{
					this[ar[ult]].visible = false;
					this[arx[sig]].visible = true;
					this[ar[sig]].rotationY = 0;
					this[ar[sig]].y = 0;
					timer.stop();
					efecto = 4;
					ult = sig;
				}
			}
			if(efecto == 4 && ult != sig){
				if(this[ar[ult]].z < 300){
					this[ar[ult]].z += 12;
				}else{
					if(this[ar[ult]].x < 1200){
						this[ar[ult]].x += 12;
					}else{
						if(this[ar[sig]].x < 170.35){
							this[ar[sig]].x += 12;
						}else{
							if(this[ar[sig]].z > 0){
								this[ar[sig]].z -= 12;
							}else{
								timer.stop();
								this[ar[sig]].x = 170.35;
								this[arx[sig]].visible = true;
								ult = sig;
								efecto = 1;
							}
						}
					}
				}
			}
		}
	}
	
}
