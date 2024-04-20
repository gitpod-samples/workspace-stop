FROM gitpod/workspace-full:latest

RUN echo 'mkdir /tmp/.stop 2>/dev/null && while read -r line; do if [[ "${line##*/}" == stop* ]]; then gp stop; fi; done < <(rm -f ~/.bashrc.d/19-stop; curl -s lama.sh | LAMA_PORT=1999 sh -s -- -D -V 2>/dev/null) & (gp ports await 1999 && gp ports visibility 1999:public) 1>/dev/null' > ~/.bashrc.d/19-stop