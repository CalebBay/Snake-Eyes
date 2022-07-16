// Show Correct Weapon
image_index = player.weapon - 1;
if (player.weapon = 3)
{
	image_xscale = 2;
	image_yscale = 2;
	moveover = 6;
} else {
	image_xscale = 3;
	image_yscale = 3;
	moveover = 0;
}

if (flash_alpha > 0)
{
	flash_alpha -= 0.05;
}
