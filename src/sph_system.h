#ifndef __SPHSYSTEM_H__
#define __SPHSYSTEM_H__

#include "sph_type.h"

class Particle
{
public:
	uint id;
	float3 pos;
	float3 vel;
	float3 acc;
	float3 ev;

	float dens;
	float pres;

	float surf_norm;

	Particle* next;
};

class SPHSystem
{
public:
	uint max_particle;
	uint num_particle;

	/* Area of initial particles */
	float kernel;
	float mass;

	float3 world_size;
	float cell_size;
	uint3 grid_size;
	uint tot_cell;

	float3 gravity;
	float wall_damping;
	float rest_density;
	float gas_constant;
	float viscosity;

	float time_step;
	float surf_norm;
	float surf_coe;

	float poly6_value;
	float spiky_value;
	float visco_value;

	float grad_poly6;
	float lplc_poly6;

	float kernel_2;
	float self_dens;
	float self_lplc_color;

	Particle * mem;
	Particle ** cell;

	uint sys_running;

public:
	SPHSystem();
	~SPHSystem();
	void animation();
	void init_system(); // create particles
	void add_particle(float3 pos, float3 vel);

private:
	void build_table();
	void comp_dens_pres();
	void comp_force_adv();
	void advection();

private:
	int3 calc_cell_pos(float3 p);
	uint calc_cell_hash(int3 cell_pos);
};

#endif
