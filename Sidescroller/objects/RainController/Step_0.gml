// This just spawns 20 raindrops every step.
repeat(20) {
    part_particles_create(global.ps, random_range(-100, room_width+100), random_range(-100, 0), rain, 1);
}