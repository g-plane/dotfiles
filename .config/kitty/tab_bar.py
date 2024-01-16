# pyright: reportMissingImports=false

from kitty.fast_data_types import Screen, get_options
from kitty.tab_bar import DrawData, ExtraData, TabBarData, as_rgb, draw_title
from kitty.utils import color_as_int

opts = get_options()


def draw_tab(
    draw_data: DrawData,
    screen: Screen,
    tab: TabBarData,
    before: int,
    max_tab_length: int,
    index: int,
    is_last: bool,
    _: ExtraData,
) -> int:
    tab_bar_bg = as_rgb(color_as_int(opts.tab_bar_background))
    orig_fg = screen.cursor.fg
    orig_bg = screen.cursor.bg
    left_sep = ''
    right_sep = ''

    def draw_sep(which: str) -> None:
        screen.cursor.bg = tab_bar_bg
        screen.cursor.fg = orig_bg
        screen.draw(which)
        screen.cursor.bg = orig_bg
        screen.cursor.fg = orig_fg

    max_tab_length += 1
    if max_tab_length <= 1:
        screen.draw('…')
    elif max_tab_length == 2:
        screen.draw('…|')
    elif max_tab_length < 6:
        draw_sep(left_sep)
        screen.draw(
            (' ' if max_tab_length == 5 else '') + '…' + (' ' if max_tab_length >= 4 else '')
        )
        draw_sep(right_sep)
    else:
        draw_sep(left_sep)
        screen.draw(' ')
        draw_title(draw_data, screen, tab, index, max_tab_length)
        extra = screen.cursor.x - before - max_tab_length
        if extra >= 0:
            screen.cursor.x -= extra + 3
            screen.draw('…')
        elif extra == -1:
            screen.cursor.x -= 2
            screen.draw('…')
        screen.draw(' ')
        draw_sep(right_sep)

    # mark end here deliberately to ensure right whitespace is clickable
    end = screen.cursor.x

    if is_last:
        screen.cursor.bg = tab_bar_bg
        screen.draw(' ' * (screen.columns - screen.cursor.x))

    return end
