// GLEW
#ifndef GLEW_STATIC
#define GLEW_STATIC
#endif
#include <GL/glew.h>

// GLFW
#include <GLFW/glfw3.h>

// GLM
#include<glm/glm.hpp>
#include<glm/gtc/matrix_transform.hpp>
#include<glm/gtc/type_ptr.hpp>

#include <iostream>
#include "shader.h"
#include "camera.h"
#include "mesh_builder.h"

// Function prototypes
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode);

// Camera
Camera camera(glm::vec3(0.4f, 0.3f, 1.5f));
bool keys[1024];

GLfloat deltaTime = 0.0f;
GLfloat lastFrame = 0.0f;

// Window size
const GLuint k_Width = 800, k_Height = 600;

bool mc_flag = false;

int main(void){
    // GLFW init
    glfwInit();
    // GLFW options
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);

    // Create GLFW window
    GLFWwindow* window = glfwCreateWindow(k_Width, k_Height, "Asst4SPH", nullptr, nullptr);
    if(window == nullptr){
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    glfwSetKeyCallback(window, key_callback);

    // GLEW init
    glewExperimental = GL_TRUE;
    if(glewInit() != GLEW_OK){
        std::cout << "Failed to initialize GLEW" << std::endl;
        return -1;
    }

    // Define viewport
    glViewport(0, 0, k_Width, k_Height);
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glEnable(GL_DEPTH_TEST);
    // Enable blending
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    Shader shader("../asst4_sph/shaders/default.vertex", "../asst4_sph/shaders/default.fragment");
    MeshBuilder mesh;

    /*GLfloat vertices[18] =
    {
        0.0f, 0.4f, 0.8f, 1.0f, 1.0f, 1.0f,
      0.0f, 0.8f, 0.8f, 1.0f, 1.0f, 1.0f,
      0.8f, 0.4f, 0.8f, 1.0f, 1.0f, 1.0f
    };*/

    GLuint vbo, vao;
    glGenVertexArrays(1, &vao);
    glGenBuffers(1, &vbo);
    // Bind the Vertex Array Object first, then bind and set vertex buffer(s) and attribute pointer(s).
    glBindVertexArray(vao);

    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, mesh.size_vert, mesh.vertices, GL_STREAM_DRAW);
    //glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat), (GLvoid*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat), (GLvoid*)(3 * sizeof(GLfloat)));
    glEnableVertexAttribArray(1);

    glBindVertexArray(0); // Unbind VAO (it's always a good thing to unbind any buffer/array to prevent strange bugs), remember: do NOT unbind the EBO, keep it bound to this VAO

    // Draw loop
    while(!glfwWindowShouldClose(window)){
        glfwPollEvents();
        mesh.Update(mc_flag);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        // Draw our first triangle
        glUseProgram(shader.Program);

        // All world base
        glm::mat4 model(1.0f);

        // Create camera transformation
        glm::mat4 view;
        view = camera.GetViewMatrix();
        glm::mat4 projection;
        projection = glm::perspective(camera.Zoom, (float)k_Width/(float)k_Height, 0.01f, 10.0f);
        // Get the uniform locations
        GLint modelLoc = glGetUniformLocation(shader.Program, "model");
        GLint viewLoc = glGetUniformLocation(shader.Program, "view");
        GLint projLoc = glGetUniformLocation(shader.Program, "projection");
        // Pass the matrices to the shader
        glUniformMatrix4fv(viewLoc, 1, GL_FALSE, glm::value_ptr(view));
        glUniformMatrix4fv(projLoc, 1, GL_FALSE, glm::value_ptr(projection));
        glUniformMatrix4fv(modelLoc, 1, GL_FALSE, glm::value_ptr(model));

        glBindVertexArray(vao);
        //std::cout << mesh.size_vert << std::endl;
        glBufferData(GL_ARRAY_BUFFER, sizeof(GLfloat) * mesh.size_vert, mesh.vertices, GL_STREAM_DRAW);

        if(mc_flag)
          glDrawArrays(GL_TRIANGLES, 0, mesh.size_vert);
        else
          glDrawArrays(GL_POINTS, 0, mesh.size_vert);

        glBindVertexArray(0);

        glfwSwapBuffers(window);
    }

    // Properly de-allocate all resources once they've outlived their purpose
    glDeleteVertexArrays(1, &vao);
    glDeleteBuffers(1, &vbo);
    glfwTerminate();
    return 0;
}

// Is called whenever a key is pressed/released via GLFW
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode) {
  //cout << key << endl;
  if(key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
    glfwSetWindowShouldClose(window, GL_TRUE);
  if(key == GLFW_KEY_V && action == GLFW_PRESS)
    mc_flag = !mc_flag;
  if (key >= 0 && key < 1024)
    {
      if(action == GLFW_PRESS)
        keys[key] = true;
      else if(action == GLFW_RELEASE)
        keys[key] = false;
    }
}
