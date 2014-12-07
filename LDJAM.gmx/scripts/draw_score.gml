depth = -10000

score_text = string_format(global.gamescore,6,0);
score_text = string_replace_all(score_text," ","0");

//Draw Score
draw_set_color(make_color_rgb(152,96,0));
draw_set_font(font_largetext);
draw_text(x,y,score_text);

draw_set_color(make_color_rgb(220,209,22));
draw_set_font(font_largetext);
draw_text(x+2,y+2,score_text);

//Draw Arrows
arrowcount = "Arrows: " + string(obj_player.arrow_total);

draw_set_color(make_color_rgb(152,96,0));
draw_set_font(font_medtext);
draw_text(x,y+56,arrowcount);

draw_set_color(make_color_rgb(220,209,22));
draw_set_font(font_medtext);
draw_text(x+1,y+56+1,arrowcount);

//Draw Lives
levelcount = "Lives: " + string(global.levellives);

draw_set_color(make_color_rgb(152,96,0));
draw_set_font(font_medtext);
draw_text(x+100,y+56,levelcount);

draw_set_color(make_color_rgb(220,209,22));
draw_set_font(font_medtext);
draw_text(x+100+1,y+56+1,levelcount);

if(global.levellives <= 0)
{
    room_restart();
}
