FROM dock0/arch
RUN yes | pacman -Syu && \
    yes | pacman -S clang && \
    yes | pacman -Sc
# RUN echo -e "[multilib]\nInclude = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf && \
#     pacman -Syu && \
#     yes | pacman -S \
#         gcc-multilib \
#         musl \
#         dietlibc && \
#     yes | pacman -Sc
