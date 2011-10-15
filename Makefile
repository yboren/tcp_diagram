all: tcp_state.dot
	dot tcp_state.dot -Tpng -o tcp_state.png

.PHONY: tex clean
tex: tcp_state.dot
	dot2tex tcp_state.dot
	xelatex tcp_state.tex

clean:
	rm tcp_state.png tcp_state.tex tcp_state.log tcp_state.aux tcp_state.pdf
