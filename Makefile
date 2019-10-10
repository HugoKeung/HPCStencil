all: stencil stencilo0 stencilo1 stencilo2 stencilo3 stencilofast stencilofastmtune
stencil: stencil.c
	gcc -std=c99 -Wall  $^ -o $@

stencilo0: stencil.c
	gcc -std=c99 -Wall -O0 $^ -o $@

stencilo1: stencil.c
	gcc -std=c99 -Wall -O1 $^ -o $@

stencilo2: stencil.c
	gcc -std=c99 -Wall -O2 $^ -o $@

stencilo3: stencil.c
	gcc -std=c99 -Wall -O3 $^ -o $@

stencilofast: stencil.c
	gcc -std=c99 -Wall -Ofast $^ -o $@

stencilofastmtune: stencil.c
	gcc -std=c99 -Wall -Ofast -mtune=native $^ -o $@


