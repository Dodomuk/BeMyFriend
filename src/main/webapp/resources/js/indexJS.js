import * as THREE from 'https://threejsfundamentals.org/threejs/resources/threejs/r127/build/three.module.js';

import  { Water }  from '../objects/Water.js';
import  { Sky } from '../objects/Sky.js';

			let container;
			let camera, scene, renderer;
			let water, sun, mesh;
			let raycaster;
			let INTERSECTED;
			
			const mainText = "BE MY FRIEND";
			const toMovePage = "/main";
			
			const pointer = new THREE.Vector2();

			init();
			animate();

			function init() {

				container = document.getElementById( 'container' );

				//renderer

				renderer = new THREE.WebGLRenderer();
				renderer.setPixelRatio( window.devicePixelRatio );
				renderer.setSize( window.innerWidth, window.innerHeight );
				renderer.toneMapping = THREE.ACESFilmicToneMapping;
				container.appendChild( renderer.domElement );

				//scene, camera

				scene = new THREE.Scene();

				camera = new THREE.PerspectiveCamera( 55, window.innerWidth / window.innerHeight, 1, 20000 );
				camera.position.set( 30, 30, 100 );

				//sun

				sun = new THREE.Vector3();

				// Water

				const waterGeometry = new THREE.PlaneGeometry( 10000, 10000 );

				water = new Water(
					waterGeometry,
					{
						textureWidth: 512,
						textureHeight: 512,
						waterNormals: new THREE.TextureLoader().load( '../resources/images/waternormals.jpg', function ( texture ) {

							texture.wrapS = texture.wrapT = THREE.RepeatWrapping;

						} ),
						sunDirection: new THREE.Vector3(),
						sunColor: 0xffffff,
						waterColor: 0x001e0f,
						distortionScale: 3.7,
						fog: scene.fog !== undefined
					}
				);

				water.rotation.x = - Math.PI / 2;

				scene.add( water );

				// Skybox

				const sky = new Sky();
				sky.scale.setScalar( 10000 );
				scene.add( sky );

				const skyUniforms = sky.material.uniforms;

				skyUniforms[ 'turbidity' ].value = 10;
				skyUniforms[ 'rayleigh' ].value = 2;
				skyUniforms[ 'mieCoefficient' ].value = 0.005;
				skyUniforms[ 'mieDirectionalG' ].value = 0.8;

				const parameters = {
					inclination: 0.515,
					azimuth: 0.205
				};

				const pmremGenerator = new THREE.PMREMGenerator( renderer );

				function updateSun() {

					const theta = Math.PI * ( parameters.inclination - 0.5 );
					const phi = 2 * Math.PI * ( parameters.azimuth - 0.5 );

					sun.x = Math.cos( phi );
					sun.y = Math.sin( phi ) * Math.sin( theta );
					sun.z = Math.sin( phi ) * Math.cos( theta );

					sky.material.uniforms[ 'sunPosition' ].value.copy( sun );
					water.material.uniforms[ 'sunDirection' ].value.copy( sun ).normalize();

					scene.environment = pmremGenerator.fromScene( sky ).texture;

				}

				updateSun();

				// TextGeo

				const fontLoader = new THREE.FontLoader();
				const material = new THREE.MeshLambertMaterial( { 
					color : 0x8bdb09
				});
			
				fontLoader.load('https://threejs.org/examples/fonts/helvetiker_regular.typeface.json',
						function(font) {
			
							const textGeo = new THREE.TextGeometry( mainText, {
								font : font,
								size : 12,
								height : 0.3,
								curveSegments : 12
							});
			
							mesh = new THREE.Mesh( textGeo, material );
							mesh.position.x = 20;
							mesh.position.y = -16;
							scene.add(mesh);
							animate();
						});
						
				
				
				
				window.addEventListener( 'resize', onWindowResize );
				
				//Drag function
				
				const upTexture = () => {
					mesh.position.y += 2;//-16~32
					parameters.inclination -= 0.00125;//0.515~0.485
					updateSun();
				}
				const downTexture = () => {
					mesh.position.y -= 2;//-16~32
					parameters.inclination += 0.00125;//0.515~0.485
					updateSun();
				}

				window.onmousewheel = function(e){
					
					//태양 조절은 따로 조건문 필요 x
					if(e.wheelDelta <= 0){
						//mouse down
						if(mesh.position.y >= -16){
							downTexture();
						}
					}else{
						//mouse up
						if(mesh.position.y <= 32){
							upTexture();
						}
					}
					
					
				}

			}

			function onWindowResize() {

				camera.aspect = window.innerWidth / window.innerHeight;
				camera.updateProjectionMatrix();

				renderer.setSize( window.innerWidth, window.innerHeight );

			}
			
			
			
			function animate() {

				requestAnimationFrame( animate );
				render();

			}

			function render() {

				const time = performance.now() * 0.001;
				//mesh.position.y = Math.sin( time ) * 20 + 5;//5~26
				
				water.material.uniforms[ 'time' ].value += 1.0 / 60.0;
				
				
				//find TextGeo and move To otehr page
				raycaster = new THREE.Raycaster();
				raycaster.setFromCamera( pointer, camera );
				
				document.addEventListener( 'mousemove', onPointerMove );
				
				function onPointerMove( event ) {

					pointer.x = ( event.clientX / window.innerWidth ) * 2 - 1;
					pointer.y = - ( event.clientY / window.innerHeight ) * 2 + 1;

				}
				
				function onPointClick( event ){
					location.href = toMovePage;
				}
				
				const intersects = raycaster.intersectObject(mesh);
				

				if ( intersects.length > 0 ) {
					
					if ( INTERSECTED != intersects[ 0 ].object ) {
						
					if ( INTERSECTED ) INTERSECTED.material.emissive.setHex( INTERSECTED.currentHex );

						INTERSECTED = intersects[ 0 ].object;
						INTERSECTED.currentHex = INTERSECTED.material.emissive.getHex();
						INTERSECTED.material.emissive.setHex( 0x8bdb09 );
						
						document.addEventListener('click', onPointClick);

					}

				} else {

					if ( INTERSECTED ) INTERSECTED.material.emissive.setHex( INTERSECTED.currentHex );

					INTERSECTED = null;

				}
				renderer.render( scene, camera );
				
				
			}
			
			
