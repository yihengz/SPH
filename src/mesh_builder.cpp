#include "mesh_builder.h"
#include <iostream>

MeshBuilder::MeshBuilder(){
  sph = new SPHSystem();
  sph->init_system();
  sph->sys_running = 1;

  sph_timer = new Timer();
  size_vert = 0;
}

MeshBuilder::~MeshBuilder(){
  delete(sph);
  delete(sph_timer);
}

void MeshBuilder::Update(bool mc_flag){
  sph->animation();
  sph_timer->update();
  if(mc_flag)
    MarchingCubes();
  else
    PointsTrav();
}

void MeshBuilder::PointsTrav(){
  size_vert = 6 * sph->num_particle;
  vert_buffer.resize(size_vert);
  //std::cout<<vert_buffer.size()<<", "<<sph->num_particle<<std::endl;
  for(uint i = 0; i < sph->num_particle; ++i){
      vert_buffer[6 * i] = sph->mem[i].pos.x;
      vert_buffer[6 * i + 1] = sph->mem[i].pos.y;
      vert_buffer[6 * i + 2] = sph->mem[i].pos.z;
      vert_buffer[6 * i + 3] = 1.0f;
      vert_buffer[6 * i + 4] = 1.0f;
      vert_buffer[6 * i + 5] = 1.0f;
    }
  vertices = &(vert_buffer[0]);
}

void MeshBuilder::MarchingCubes(){
  vert_buffer.resize(0);
  size_vert = 0;
  for(int x = -1; x <= mc_num_step; ++x){
      for(int y = -1; y <= mc_num_step; ++y){
          for(int z = -1; z <= mc_num_step; ++z){
              float3 cube_origin;
              cube_origin.x = x * mc_step;
              cube_origin.y = y * mc_step;
              cube_origin.z = z * mc_step;
              int vert_state = 0;
              for(int i = 0; i < 8; ++i){
                  float3 cube_vert;
                  cube_vert.x += mc_vert_offset[i][0] * mc_step + cube_origin.x;
                  cube_vert.y += mc_vert_offset[i][1] * mc_step + cube_origin.y;
                  cube_vert.z += mc_vert_offset[i][2] * mc_step + cube_origin.z;
                  if(IsoLevel(cube_vert)){
                      vert_state |= mc_bit_table[i];
                    }
                }
              for(int i = 0; mc_tri_table[vert_state][i] != -1; i += 3){
                  for(int j = 0; j < 3; ++j){
                      int edge_index = mc_tri_table[vert_state][i + j];
                      GLfloat pos = cube_origin.x + mc_edge_offset[edge_index][0] * mc_step;
                      vert_buffer.insert(vert_buffer.end(), pos);
                      pos = cube_origin.y + mc_edge_offset[edge_index][1] * mc_step;
                      vert_buffer.insert(vert_buffer.end(), pos);
                      pos = cube_origin.z + mc_edge_offset[edge_index][2] * mc_step;
                      vert_buffer.insert(vert_buffer.end(), pos);

                      for(int k = 0; k < 3; ++k){
                          vert_buffer.insert(vert_buffer.end(), k * 0.3);
                        }
                    }
                }
            }
        }
    }
  size_vert = vert_buffer.size();
  vertices = &(vert_buffer[0]);
}

bool MeshBuilder::IsoLevel(float3 point){
  for(int i = 0; i < sph->num_particle; ++i){
      GLfloat dis_x = sph->mem[i].pos.x - point.x,
          dis_y = sph->mem[i].pos.y - point.y,
          dis_z = sph->mem[i].pos.z - point.z;
      GLfloat distance = dis_x * dis_x + dis_y * dis_y + dis_z * dis_z;
      if(distance < mc_step * mc_step){
          return true;
        }
    }
  return false;
}
