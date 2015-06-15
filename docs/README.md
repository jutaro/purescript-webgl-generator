# Module Documentation

## Module Graphics.WebGL.Raw


#### `activeTexture`

``` purescript
activeTexture :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `attachShader`

``` purescript
attachShader :: forall eff. WebGLContext -> WebGLProgram -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
```


#### `bindAttribLocation`

``` purescript
bindAttribLocation :: forall eff. WebGLContext -> WebGLProgram -> GLuint -> DOMString -> Eff (canvas :: Canvas | eff) Unit
```


#### `bindBuffer`

``` purescript
bindBuffer :: forall eff. WebGLContext -> GLenum -> WebGLBuffer -> Eff (canvas :: Canvas | eff) Unit
```


#### `bindFramebuffer`

``` purescript
bindFramebuffer :: forall eff. WebGLContext -> GLenum -> WebGLFramebuffer -> Eff (canvas :: Canvas | eff) Unit
```


#### `bindRenderbuffer`

``` purescript
bindRenderbuffer :: forall eff. WebGLContext -> GLenum -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) Unit
```


#### `bindTexture`

``` purescript
bindTexture :: forall eff. WebGLContext -> GLenum -> WebGLTexture -> Eff (canvas :: Canvas | eff) Unit
```


#### `blendColor`

``` purescript
blendColor :: forall eff. WebGLContext -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
```


#### `blendEquation`

``` purescript
blendEquation :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `blendEquationSeparate`

``` purescript
blendEquationSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `blendFunc`

``` purescript
blendFunc :: forall eff. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `blendFuncSeparate`

``` purescript
blendFuncSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `bufferData`

``` purescript
bufferData :: forall eff. WebGLContext -> GLenum -> BufferDataSource -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `bufferData_`

``` purescript
bufferData_ :: forall eff. WebGLContext -> GLenum -> GLsizeiptr -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `bufferSubData`

``` purescript
bufferSubData :: forall eff. WebGLContext -> GLenum -> GLintptr -> BufferDataSource -> Eff (canvas :: Canvas | eff) Unit
```


#### `checkFramebufferStatus`

``` purescript
checkFramebufferStatus :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) GLenum
```


#### `clear`

``` purescript
clear :: forall eff. WebGLContext -> GLbitfield -> Eff (canvas :: Canvas | eff) Unit
```


#### `clearColor`

``` purescript
clearColor :: forall eff. WebGLContext -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
```


#### `clearDepth`

``` purescript
clearDepth :: forall eff. WebGLContext -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
```


#### `clearStencil`

``` purescript
clearStencil :: forall eff. WebGLContext -> GLint -> Eff (canvas :: Canvas | eff) Unit
```


#### `colorMask`

``` purescript
colorMask :: forall eff. WebGLContext -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> Eff (canvas :: Canvas | eff) Unit
```


#### `compileShader`

``` purescript
compileShader :: forall eff. WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
```


#### `compressedTexImage2D`

``` purescript
compressedTexImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
```


#### `compressedTexSubImage2D`

``` purescript
compressedTexSubImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
```


#### `copyTexImage2D`

``` purescript
copyTexImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> Eff (canvas :: Canvas | eff) Unit
```


#### `copyTexSubImage2D`

``` purescript
copyTexSubImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
```


#### `createBuffer`

``` purescript
createBuffer :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLBuffer)
```


#### `createFramebuffer`

``` purescript
createFramebuffer :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLFramebuffer)
```


#### `createProgram`

``` purescript
createProgram :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLProgram)
```


#### `createRenderbuffer`

``` purescript
createRenderbuffer :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLRenderbuffer)
```


#### `createShader`

``` purescript
createShader :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe WebGLShader)
```


#### `createTexture`

``` purescript
createTexture :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLTexture)
```


#### `cullFace`

``` purescript
cullFace :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `deleteBuffer`

``` purescript
deleteBuffer :: forall eff. WebGLContext -> WebGLBuffer -> Eff (canvas :: Canvas | eff) Unit
```


#### `deleteFramebuffer`

``` purescript
deleteFramebuffer :: forall eff. WebGLContext -> WebGLFramebuffer -> Eff (canvas :: Canvas | eff) Unit
```


#### `deleteProgram`

``` purescript
deleteProgram :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
```


#### `deleteRenderbuffer`

``` purescript
deleteRenderbuffer :: forall eff. WebGLContext -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) Unit
```


#### `deleteShader`

``` purescript
deleteShader :: forall eff. WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
```


#### `deleteTexture`

``` purescript
deleteTexture :: forall eff. WebGLContext -> WebGLTexture -> Eff (canvas :: Canvas | eff) Unit
```


#### `depthFunc`

``` purescript
depthFunc :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `depthMask`

``` purescript
depthMask :: forall eff. WebGLContext -> GLboolean -> Eff (canvas :: Canvas | eff) Unit
```


#### `depthRange`

``` purescript
depthRange :: forall eff. WebGLContext -> GLclampf -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
```


#### `detachShader`

``` purescript
detachShader :: forall eff. WebGLContext -> WebGLProgram -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
```


#### `disable`

``` purescript
disable :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `disableVertexAttribArray`

``` purescript
disableVertexAttribArray :: forall eff. WebGLContext -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```


#### `drawArrays`

``` purescript
drawArrays :: forall eff. WebGLContext -> GLenum -> GLint -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
```


#### `drawElements`

``` purescript
drawElements :: forall eff. WebGLContext -> GLenum -> GLsizei -> GLenum -> GLintptr -> Eff (canvas :: Canvas | eff) Unit
```


#### `enable`

``` purescript
enable :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `enableVertexAttribArray`

``` purescript
enableVertexAttribArray :: forall eff. WebGLContext -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```


#### `finish`

``` purescript
finish :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) Unit
```


#### `flush`

``` purescript
flush :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) Unit
```


#### `framebufferRenderbuffer`

``` purescript
framebufferRenderbuffer :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) Unit
```


#### `framebufferTexture2D`

``` purescript
framebufferTexture2D :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> WebGLTexture -> GLint -> Eff (canvas :: Canvas | eff) Unit
```


#### `frontFace`

``` purescript
frontFace :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `generateMipmap`

``` purescript
generateMipmap :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `getActiveAttrib`

``` purescript
getActiveAttrib :: forall eff. WebGLContext -> WebGLProgram -> GLuint -> Eff (canvas :: Canvas | eff) (Maybe WebGLActiveInfo)
```


#### `getActiveUniform`

``` purescript
getActiveUniform :: forall eff. WebGLContext -> WebGLProgram -> GLuint -> Eff (canvas :: Canvas | eff) (Maybe WebGLActiveInfo)
```


#### `getAttachedShaders`

``` purescript
getAttachedShaders :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) [WebGLShader]
```


#### `getAttribLocation`

``` purescript
getAttribLocation :: forall eff. WebGLContext -> WebGLProgram -> DOMString -> Eff (canvas :: Canvas | eff) GLint
```


#### `getBufferParameter`

``` purescript
getBufferParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```


#### `getContextAttributes`

``` purescript
getContextAttributes :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLContextAttributes)
```


#### `getError`

``` purescript
getError :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) GLenum
```


#### `getExtension`

``` purescript
getExtension :: forall eff a. WebGLContext -> DOMString -> Eff (canvas :: Canvas | eff) (Maybe a)
```


#### `getFramebufferAttachmentParameter`

``` purescript
getFramebufferAttachmentParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```


#### `getParameter`

``` purescript
getParameter :: forall eff a. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```


#### `getProgramInfoLog`

``` purescript
getProgramInfoLog :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) (Maybe DOMString)
```


#### `getProgramParameter`

``` purescript
getProgramParameter :: forall eff a. WebGLContext -> WebGLProgram -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```


#### `getRenderbufferParameter`

``` purescript
getRenderbufferParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```


#### `getShaderInfoLog`

``` purescript
getShaderInfoLog :: forall eff. WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) (Maybe DOMString)
```


#### `getShaderParameter`

``` purescript
getShaderParameter :: forall eff a. WebGLContext -> WebGLShader -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```


#### `getShaderPrecisionFormat`

``` purescript
getShaderPrecisionFormat :: forall eff. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe WebGLShaderPrecisionFormat)
```


#### `getShaderSource`

``` purescript
getShaderSource :: forall eff. WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) (Maybe DOMString)
```


#### `getSupportedExtensions`

``` purescript
getSupportedExtensions :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) [DOMString]
```


#### `getTexParameter`

``` purescript
getTexParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```


#### `getUniform`

``` purescript
getUniform :: forall eff a. WebGLContext -> WebGLProgram -> WebGLUniformLocation -> Eff (canvas :: Canvas | eff) (Maybe a)
```


#### `getUniformLocation`

``` purescript
getUniformLocation :: forall eff. WebGLContext -> WebGLProgram -> DOMString -> Eff (canvas :: Canvas | eff) (Maybe WebGLUniformLocation)
```


#### `getVertexAttrib`

``` purescript
getVertexAttrib :: forall eff a. WebGLContext -> GLuint -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
```


#### `getVertexAttribOffset`

``` purescript
getVertexAttribOffset :: forall eff. WebGLContext -> GLuint -> GLenum -> Eff (canvas :: Canvas | eff) GLsizeiptr
```


#### `hint`

``` purescript
hint :: forall eff. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `isBuffer`

``` purescript
isBuffer :: forall eff. WebGLContext -> WebGLBuffer -> Eff (canvas :: Canvas | eff) GLboolean
```


#### `isContextLost`

``` purescript
isContextLost :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) Boolean
```


#### `isEnabled`

``` purescript
isEnabled :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) GLboolean
```


#### `isFramebuffer`

``` purescript
isFramebuffer :: forall eff. WebGLContext -> WebGLFramebuffer -> Eff (canvas :: Canvas | eff) GLboolean
```


#### `isProgram`

``` purescript
isProgram :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) GLboolean
```


#### `isRenderbuffer`

``` purescript
isRenderbuffer :: forall eff. WebGLContext -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) GLboolean
```


#### `isShader`

``` purescript
isShader :: forall eff. WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) GLboolean
```


#### `isTexture`

``` purescript
isTexture :: forall eff. WebGLContext -> WebGLTexture -> Eff (canvas :: Canvas | eff) GLboolean
```


#### `lineWidth`

``` purescript
lineWidth :: forall eff. WebGLContext -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```


#### `linkProgram`

``` purescript
linkProgram :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
```


#### `pixelStorei`

``` purescript
pixelStorei :: forall eff. WebGLContext -> GLenum -> GLint -> Eff (canvas :: Canvas | eff) Unit
```


#### `polygonOffset`

``` purescript
polygonOffset :: forall eff. WebGLContext -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```


#### `readPixels`

``` purescript
readPixels :: forall eff. WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
```


#### `renderbufferStorage`

``` purescript
renderbufferStorage :: forall eff. WebGLContext -> GLenum -> GLenum -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
```


#### `sampleCoverage`

``` purescript
sampleCoverage :: forall eff. WebGLContext -> GLclampf -> GLboolean -> Eff (canvas :: Canvas | eff) Unit
```


#### `scissor`

``` purescript
scissor :: forall eff. WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
```


#### `shaderSource`

``` purescript
shaderSource :: forall eff. WebGLContext -> WebGLShader -> DOMString -> Eff (canvas :: Canvas | eff) Unit
```


#### `stencilFunc`

``` purescript
stencilFunc :: forall eff. WebGLContext -> GLenum -> GLint -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```


#### `stencilFuncSeparate`

``` purescript
stencilFuncSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> GLint -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```


#### `stencilMask`

``` purescript
stencilMask :: forall eff. WebGLContext -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```


#### `stencilMaskSeparate`

``` purescript
stencilMaskSeparate :: forall eff. WebGLContext -> GLenum -> GLuint -> Eff (canvas :: Canvas | eff) Unit
```


#### `stencilOp`

``` purescript
stencilOp :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `stencilOpSeparate`

``` purescript
stencilOpSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
```


#### `texImage2D`

``` purescript
texImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLenum -> GLenum -> TexImageSource -> Eff (canvas :: Canvas | eff) Unit
```


#### `texImage2D_`

``` purescript
texImage2D_ :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
```


#### `texParameterf`

``` purescript
texParameterf :: forall eff. WebGLContext -> GLenum -> GLenum -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```


#### `texParameteri`

``` purescript
texParameteri :: forall eff. WebGLContext -> GLenum -> GLenum -> GLint -> Eff (canvas :: Canvas | eff) Unit
```


#### `texSubImage2D`

``` purescript
texSubImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLenum -> GLenum -> TexImageSource -> Eff (canvas :: Canvas | eff) Unit
```


#### `texSubImage2D_`

``` purescript
texSubImage2D_ :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform1f`

``` purescript
uniform1f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform1fv`

``` purescript
uniform1fv :: forall eff. WebGLContext -> WebGLUniformLocation -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform1fv_`

``` purescript
uniform1fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform1i`

``` purescript
uniform1i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform1iv`

``` purescript
uniform1iv :: forall eff. WebGLContext -> WebGLUniformLocation -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform1iv_`

``` purescript
uniform1iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform2f`

``` purescript
uniform2f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform2fv`

``` purescript
uniform2fv :: forall eff. WebGLContext -> WebGLUniformLocation -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform2fv_`

``` purescript
uniform2fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform2i`

``` purescript
uniform2i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform2iv`

``` purescript
uniform2iv :: forall eff. WebGLContext -> WebGLUniformLocation -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform2iv_`

``` purescript
uniform2iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform3f`

``` purescript
uniform3f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform3fv`

``` purescript
uniform3fv :: forall eff. WebGLContext -> WebGLUniformLocation -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform3fv_`

``` purescript
uniform3fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform3i`

``` purescript
uniform3i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> GLint -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform3iv`

``` purescript
uniform3iv :: forall eff. WebGLContext -> WebGLUniformLocation -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform3iv_`

``` purescript
uniform3iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform4f`

``` purescript
uniform4f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform4fv`

``` purescript
uniform4fv :: forall eff. WebGLContext -> WebGLUniformLocation -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform4fv_`

``` purescript
uniform4fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform4i`

``` purescript
uniform4i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> GLint -> GLint -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform4iv`

``` purescript
uniform4iv :: forall eff. WebGLContext -> WebGLUniformLocation -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniform4iv_`

``` purescript
uniform4iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniformMatrix2fv`

``` purescript
uniformMatrix2fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniformMatrix2fv_`

``` purescript
uniformMatrix2fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniformMatrix3fv`

``` purescript
uniformMatrix3fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniformMatrix3fv_`

``` purescript
uniformMatrix3fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniformMatrix4fv`

``` purescript
uniformMatrix4fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `uniformMatrix4fv_`

``` purescript
uniformMatrix4fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `useProgram`

``` purescript
useProgram :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
```


#### `validateProgram`

``` purescript
validateProgram :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib1f`

``` purescript
vertexAttrib1f :: forall eff. WebGLContext -> GLuint -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib1fv`

``` purescript
vertexAttrib1fv :: forall eff. WebGLContext -> GLuint -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib1fv_`

``` purescript
vertexAttrib1fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib2f`

``` purescript
vertexAttrib2f :: forall eff. WebGLContext -> GLuint -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib2fv`

``` purescript
vertexAttrib2fv :: forall eff. WebGLContext -> GLuint -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib2fv_`

``` purescript
vertexAttrib2fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib3f`

``` purescript
vertexAttrib3f :: forall eff. WebGLContext -> GLuint -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib3fv`

``` purescript
vertexAttrib3fv :: forall eff. WebGLContext -> GLuint -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib3fv_`

``` purescript
vertexAttrib3fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib4f`

``` purescript
vertexAttrib4f :: forall eff. WebGLContext -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib4fv`

``` purescript
vertexAttrib4fv :: forall eff. WebGLContext -> GLuint -> [GLfloat] -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttrib4fv_`

``` purescript
vertexAttrib4fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```


#### `vertexAttribPointer`

``` purescript
vertexAttribPointer :: forall eff. WebGLContext -> GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> GLintptr -> Eff (canvas :: Canvas | eff) Unit
```


#### `viewport`

``` purescript
viewport :: forall eff. WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
```



## Module Graphics.WebGL.Raw.Enums


#### `activeAttributes`

``` purescript
activeAttributes :: GLenum
```


#### `activeTexture`

``` purescript
activeTexture :: GLenum
```


#### `activeUniforms`

``` purescript
activeUniforms :: GLenum
```


#### `aliasedLineWidthRange`

``` purescript
aliasedLineWidthRange :: GLenum
```


#### `aliasedPointSizeRange`

``` purescript
aliasedPointSizeRange :: GLenum
```


#### `alpha`

``` purescript
alpha :: GLenum
```


#### `alphaBits`

``` purescript
alphaBits :: GLenum
```


#### `always`

``` purescript
always :: GLenum
```


#### `arrayBuffer`

``` purescript
arrayBuffer :: GLenum
```


#### `arrayBufferBinding`

``` purescript
arrayBufferBinding :: GLenum
```


#### `attachedShaders`

``` purescript
attachedShaders :: GLenum
```


#### `back`

``` purescript
back :: GLenum
```


#### `blend`

``` purescript
blend :: GLenum
```


#### `blendColor`

``` purescript
blendColor :: GLenum
```


#### `blendDstAlpha`

``` purescript
blendDstAlpha :: GLenum
```


#### `blendDstRgb`

``` purescript
blendDstRgb :: GLenum
```


#### `blendEquation`

``` purescript
blendEquation :: GLenum
```


#### `blendEquationAlpha`

``` purescript
blendEquationAlpha :: GLenum
```


#### `blendEquationRgb`

``` purescript
blendEquationRgb :: GLenum
```


#### `blendSrcAlpha`

``` purescript
blendSrcAlpha :: GLenum
```


#### `blendSrcRgb`

``` purescript
blendSrcRgb :: GLenum
```


#### `blueBits`

``` purescript
blueBits :: GLenum
```


#### `bool`

``` purescript
bool :: GLenum
```


#### `boolVec2`

``` purescript
boolVec2 :: GLenum
```


#### `boolVec3`

``` purescript
boolVec3 :: GLenum
```


#### `boolVec4`

``` purescript
boolVec4 :: GLenum
```


#### `browserDefaultWebgl`

``` purescript
browserDefaultWebgl :: GLenum
```


#### `bufferSize`

``` purescript
bufferSize :: GLenum
```


#### `bufferUsage`

``` purescript
bufferUsage :: GLenum
```


#### `byte`

``` purescript
byte :: GLenum
```


#### `ccw`

``` purescript
ccw :: GLenum
```


#### `clampToEdge`

``` purescript
clampToEdge :: GLenum
```


#### `colorAttachment0`

``` purescript
colorAttachment0 :: GLenum
```


#### `colorBufferBit`

``` purescript
colorBufferBit :: GLenum
```


#### `colorClearValue`

``` purescript
colorClearValue :: GLenum
```


#### `colorWritemask`

``` purescript
colorWritemask :: GLenum
```


#### `compileStatus`

``` purescript
compileStatus :: GLenum
```


#### `compressedTextureFormats`

``` purescript
compressedTextureFormats :: GLenum
```


#### `constantAlpha`

``` purescript
constantAlpha :: GLenum
```


#### `constantColor`

``` purescript
constantColor :: GLenum
```


#### `contextLostWebgl`

``` purescript
contextLostWebgl :: GLenum
```


#### `cullFace`

``` purescript
cullFace :: GLenum
```


#### `cullFaceMode`

``` purescript
cullFaceMode :: GLenum
```


#### `currentProgram`

``` purescript
currentProgram :: GLenum
```


#### `currentVertexAttrib`

``` purescript
currentVertexAttrib :: GLenum
```


#### `cw`

``` purescript
cw :: GLenum
```


#### `decr`

``` purescript
decr :: GLenum
```


#### `decrWrap`

``` purescript
decrWrap :: GLenum
```


#### `deleteStatus`

``` purescript
deleteStatus :: GLenum
```


#### `depthAttachment`

``` purescript
depthAttachment :: GLenum
```


#### `depthBits`

``` purescript
depthBits :: GLenum
```


#### `depthBufferBit`

``` purescript
depthBufferBit :: GLenum
```


#### `depthClearValue`

``` purescript
depthClearValue :: GLenum
```


#### `depthComponent`

``` purescript
depthComponent :: GLenum
```


#### `depthComponent16`

``` purescript
depthComponent16 :: GLenum
```


#### `depthFunc`

``` purescript
depthFunc :: GLenum
```


#### `depthRange`

``` purescript
depthRange :: GLenum
```


#### `depthStencil`

``` purescript
depthStencil :: GLenum
```


#### `depthStencilAttachment`

``` purescript
depthStencilAttachment :: GLenum
```


#### `depthTest`

``` purescript
depthTest :: GLenum
```


#### `depthWritemask`

``` purescript
depthWritemask :: GLenum
```


#### `dither`

``` purescript
dither :: GLenum
```


#### `dontCare`

``` purescript
dontCare :: GLenum
```


#### `dstAlpha`

``` purescript
dstAlpha :: GLenum
```


#### `dstColor`

``` purescript
dstColor :: GLenum
```


#### `dynamicDraw`

``` purescript
dynamicDraw :: GLenum
```


#### `elementArrayBuffer`

``` purescript
elementArrayBuffer :: GLenum
```


#### `elementArrayBufferBinding`

``` purescript
elementArrayBufferBinding :: GLenum
```


#### `equal`

``` purescript
equal :: GLenum
```


#### `fastest`

``` purescript
fastest :: GLenum
```


#### `float`

``` purescript
float :: GLenum
```


#### `floatMat2`

``` purescript
floatMat2 :: GLenum
```


#### `floatMat3`

``` purescript
floatMat3 :: GLenum
```


#### `floatMat4`

``` purescript
floatMat4 :: GLenum
```


#### `floatVec2`

``` purescript
floatVec2 :: GLenum
```


#### `floatVec3`

``` purescript
floatVec3 :: GLenum
```


#### `floatVec4`

``` purescript
floatVec4 :: GLenum
```


#### `fragmentShader`

``` purescript
fragmentShader :: GLenum
```


#### `framebuffer`

``` purescript
framebuffer :: GLenum
```


#### `framebufferAttachmentObjectName`

``` purescript
framebufferAttachmentObjectName :: GLenum
```


#### `framebufferAttachmentObjectType`

``` purescript
framebufferAttachmentObjectType :: GLenum
```


#### `framebufferAttachmentTextureCubeMapFace`

``` purescript
framebufferAttachmentTextureCubeMapFace :: GLenum
```


#### `framebufferAttachmentTextureLevel`

``` purescript
framebufferAttachmentTextureLevel :: GLenum
```


#### `framebufferBinding`

``` purescript
framebufferBinding :: GLenum
```


#### `framebufferComplete`

``` purescript
framebufferComplete :: GLenum
```


#### `framebufferIncompleteAttachment`

``` purescript
framebufferIncompleteAttachment :: GLenum
```


#### `framebufferIncompleteDimensions`

``` purescript
framebufferIncompleteDimensions :: GLenum
```


#### `framebufferIncompleteMissingAttachment`

``` purescript
framebufferIncompleteMissingAttachment :: GLenum
```


#### `framebufferUnsupported`

``` purescript
framebufferUnsupported :: GLenum
```


#### `front`

``` purescript
front :: GLenum
```


#### `frontAndBack`

``` purescript
frontAndBack :: GLenum
```


#### `frontFace`

``` purescript
frontFace :: GLenum
```


#### `funcAdd`

``` purescript
funcAdd :: GLenum
```


#### `funcReverseSubtract`

``` purescript
funcReverseSubtract :: GLenum
```


#### `funcSubtract`

``` purescript
funcSubtract :: GLenum
```


#### `generateMipmapHint`

``` purescript
generateMipmapHint :: GLenum
```


#### `gequal`

``` purescript
gequal :: GLenum
```


#### `greater`

``` purescript
greater :: GLenum
```


#### `greenBits`

``` purescript
greenBits :: GLenum
```


#### `highFloat`

``` purescript
highFloat :: GLenum
```


#### `highInt`

``` purescript
highInt :: GLenum
```


#### `implementationColorReadFormat`

``` purescript
implementationColorReadFormat :: GLenum
```


#### `implementationColorReadType`

``` purescript
implementationColorReadType :: GLenum
```


#### `incr`

``` purescript
incr :: GLenum
```


#### `incrWrap`

``` purescript
incrWrap :: GLenum
```


#### `int`

``` purescript
int :: GLenum
```


#### `intVec2`

``` purescript
intVec2 :: GLenum
```


#### `intVec3`

``` purescript
intVec3 :: GLenum
```


#### `intVec4`

``` purescript
intVec4 :: GLenum
```


#### `invalidEnum`

``` purescript
invalidEnum :: GLenum
```


#### `invalidFramebufferOperation`

``` purescript
invalidFramebufferOperation :: GLenum
```


#### `invalidOperation`

``` purescript
invalidOperation :: GLenum
```


#### `invalidValue`

``` purescript
invalidValue :: GLenum
```


#### `invert`

``` purescript
invert :: GLenum
```


#### `keep`

``` purescript
keep :: GLenum
```


#### `lequal`

``` purescript
lequal :: GLenum
```


#### `less`

``` purescript
less :: GLenum
```


#### `linear`

``` purescript
linear :: GLenum
```


#### `linearMipmapLinear`

``` purescript
linearMipmapLinear :: GLenum
```


#### `linearMipmapNearest`

``` purescript
linearMipmapNearest :: GLenum
```


#### `lines`

``` purescript
lines :: GLenum
```


#### `lineLoop`

``` purescript
lineLoop :: GLenum
```


#### `lineStrip`

``` purescript
lineStrip :: GLenum
```


#### `lineWidth`

``` purescript
lineWidth :: GLenum
```


#### `linkStatus`

``` purescript
linkStatus :: GLenum
```


#### `lowFloat`

``` purescript
lowFloat :: GLenum
```


#### `lowInt`

``` purescript
lowInt :: GLenum
```


#### `luminance`

``` purescript
luminance :: GLenum
```


#### `luminanceAlpha`

``` purescript
luminanceAlpha :: GLenum
```


#### `maxCombinedTextureImageUnits`

``` purescript
maxCombinedTextureImageUnits :: GLenum
```


#### `maxCubeMapTextureSize`

``` purescript
maxCubeMapTextureSize :: GLenum
```


#### `maxFragmentUniformVectors`

``` purescript
maxFragmentUniformVectors :: GLenum
```


#### `maxRenderbufferSize`

``` purescript
maxRenderbufferSize :: GLenum
```


#### `maxTextureImageUnits`

``` purescript
maxTextureImageUnits :: GLenum
```


#### `maxTextureSize`

``` purescript
maxTextureSize :: GLenum
```


#### `maxVaryingVectors`

``` purescript
maxVaryingVectors :: GLenum
```


#### `maxVertexAttribs`

``` purescript
maxVertexAttribs :: GLenum
```


#### `maxVertexTextureImageUnits`

``` purescript
maxVertexTextureImageUnits :: GLenum
```


#### `maxVertexUniformVectors`

``` purescript
maxVertexUniformVectors :: GLenum
```


#### `maxViewportDims`

``` purescript
maxViewportDims :: GLenum
```


#### `mediumFloat`

``` purescript
mediumFloat :: GLenum
```


#### `mediumInt`

``` purescript
mediumInt :: GLenum
```


#### `mirroredRepeat`

``` purescript
mirroredRepeat :: GLenum
```


#### `nearest`

``` purescript
nearest :: GLenum
```


#### `nearestMipmapLinear`

``` purescript
nearestMipmapLinear :: GLenum
```


#### `nearestMipmapNearest`

``` purescript
nearestMipmapNearest :: GLenum
```


#### `never`

``` purescript
never :: GLenum
```


#### `nicest`

``` purescript
nicest :: GLenum
```


#### `none`

``` purescript
none :: GLenum
```


#### `notequal`

``` purescript
notequal :: GLenum
```


#### `noError`

``` purescript
noError :: GLenum
```


#### `one`

``` purescript
one :: GLenum
```


#### `oneMinusConstantAlpha`

``` purescript
oneMinusConstantAlpha :: GLenum
```


#### `oneMinusConstantColor`

``` purescript
oneMinusConstantColor :: GLenum
```


#### `oneMinusDstAlpha`

``` purescript
oneMinusDstAlpha :: GLenum
```


#### `oneMinusDstColor`

``` purescript
oneMinusDstColor :: GLenum
```


#### `oneMinusSrcAlpha`

``` purescript
oneMinusSrcAlpha :: GLenum
```


#### `oneMinusSrcColor`

``` purescript
oneMinusSrcColor :: GLenum
```


#### `outOfMemory`

``` purescript
outOfMemory :: GLenum
```


#### `packAlignment`

``` purescript
packAlignment :: GLenum
```


#### `points`

``` purescript
points :: GLenum
```


#### `polygonOffsetFactor`

``` purescript
polygonOffsetFactor :: GLenum
```


#### `polygonOffsetFill`

``` purescript
polygonOffsetFill :: GLenum
```


#### `polygonOffsetUnits`

``` purescript
polygonOffsetUnits :: GLenum
```


#### `redBits`

``` purescript
redBits :: GLenum
```


#### `renderbuffer`

``` purescript
renderbuffer :: GLenum
```


#### `renderbufferAlphaSize`

``` purescript
renderbufferAlphaSize :: GLenum
```


#### `renderbufferBinding`

``` purescript
renderbufferBinding :: GLenum
```


#### `renderbufferBlueSize`

``` purescript
renderbufferBlueSize :: GLenum
```


#### `renderbufferDepthSize`

``` purescript
renderbufferDepthSize :: GLenum
```


#### `renderbufferGreenSize`

``` purescript
renderbufferGreenSize :: GLenum
```


#### `renderbufferHeight`

``` purescript
renderbufferHeight :: GLenum
```


#### `renderbufferInternalFormat`

``` purescript
renderbufferInternalFormat :: GLenum
```


#### `renderbufferRedSize`

``` purescript
renderbufferRedSize :: GLenum
```


#### `renderbufferStencilSize`

``` purescript
renderbufferStencilSize :: GLenum
```


#### `renderbufferWidth`

``` purescript
renderbufferWidth :: GLenum
```


#### `renderer`

``` purescript
renderer :: GLenum
```


#### `repeat`

``` purescript
repeat :: GLenum
```


#### `replace`

``` purescript
replace :: GLenum
```


#### `rgb`

``` purescript
rgb :: GLenum
```


#### `rgb565`

``` purescript
rgb565 :: GLenum
```


#### `rgb5A1`

``` purescript
rgb5A1 :: GLenum
```


#### `rgba`

``` purescript
rgba :: GLenum
```


#### `rgba4`

``` purescript
rgba4 :: GLenum
```


#### `sampler2d`

``` purescript
sampler2d :: GLenum
```


#### `samplerCube`

``` purescript
samplerCube :: GLenum
```


#### `samples`

``` purescript
samples :: GLenum
```


#### `sampleAlphaToCoverage`

``` purescript
sampleAlphaToCoverage :: GLenum
```


#### `sampleBuffers`

``` purescript
sampleBuffers :: GLenum
```


#### `sampleCoverage`

``` purescript
sampleCoverage :: GLenum
```


#### `sampleCoverageInvert`

``` purescript
sampleCoverageInvert :: GLenum
```


#### `sampleCoverageValue`

``` purescript
sampleCoverageValue :: GLenum
```


#### `scissorBox`

``` purescript
scissorBox :: GLenum
```


#### `scissorTest`

``` purescript
scissorTest :: GLenum
```


#### `shaderType`

``` purescript
shaderType :: GLenum
```


#### `shadingLanguageVersion`

``` purescript
shadingLanguageVersion :: GLenum
```


#### `short`

``` purescript
short :: GLenum
```


#### `srcAlpha`

``` purescript
srcAlpha :: GLenum
```


#### `srcAlphaSaturate`

``` purescript
srcAlphaSaturate :: GLenum
```


#### `srcColor`

``` purescript
srcColor :: GLenum
```


#### `staticDraw`

``` purescript
staticDraw :: GLenum
```


#### `stencilAttachment`

``` purescript
stencilAttachment :: GLenum
```


#### `stencilBackFail`

``` purescript
stencilBackFail :: GLenum
```


#### `stencilBackFunc`

``` purescript
stencilBackFunc :: GLenum
```


#### `stencilBackPassDepthFail`

``` purescript
stencilBackPassDepthFail :: GLenum
```


#### `stencilBackPassDepthPass`

``` purescript
stencilBackPassDepthPass :: GLenum
```


#### `stencilBackRef`

``` purescript
stencilBackRef :: GLenum
```


#### `stencilBackValueMask`

``` purescript
stencilBackValueMask :: GLenum
```


#### `stencilBackWritemask`

``` purescript
stencilBackWritemask :: GLenum
```


#### `stencilBits`

``` purescript
stencilBits :: GLenum
```


#### `stencilBufferBit`

``` purescript
stencilBufferBit :: GLenum
```


#### `stencilClearValue`

``` purescript
stencilClearValue :: GLenum
```


#### `stencilFail`

``` purescript
stencilFail :: GLenum
```


#### `stencilFunc`

``` purescript
stencilFunc :: GLenum
```


#### `stencilIndex`

``` purescript
stencilIndex :: GLenum
```


#### `stencilIndex8`

``` purescript
stencilIndex8 :: GLenum
```


#### `stencilPassDepthFail`

``` purescript
stencilPassDepthFail :: GLenum
```


#### `stencilPassDepthPass`

``` purescript
stencilPassDepthPass :: GLenum
```


#### `stencilRef`

``` purescript
stencilRef :: GLenum
```


#### `stencilTest`

``` purescript
stencilTest :: GLenum
```


#### `stencilValueMask`

``` purescript
stencilValueMask :: GLenum
```


#### `stencilWritemask`

``` purescript
stencilWritemask :: GLenum
```


#### `streamDraw`

``` purescript
streamDraw :: GLenum
```


#### `subpixelBits`

``` purescript
subpixelBits :: GLenum
```


#### `texture`

``` purescript
texture :: GLenum
```


#### `texture0`

``` purescript
texture0 :: GLenum
```


#### `texture1`

``` purescript
texture1 :: GLenum
```


#### `texture10`

``` purescript
texture10 :: GLenum
```


#### `texture11`

``` purescript
texture11 :: GLenum
```


#### `texture12`

``` purescript
texture12 :: GLenum
```


#### `texture13`

``` purescript
texture13 :: GLenum
```


#### `texture14`

``` purescript
texture14 :: GLenum
```


#### `texture15`

``` purescript
texture15 :: GLenum
```


#### `texture16`

``` purescript
texture16 :: GLenum
```


#### `texture17`

``` purescript
texture17 :: GLenum
```


#### `texture18`

``` purescript
texture18 :: GLenum
```


#### `texture19`

``` purescript
texture19 :: GLenum
```


#### `texture2`

``` purescript
texture2 :: GLenum
```


#### `texture20`

``` purescript
texture20 :: GLenum
```


#### `texture21`

``` purescript
texture21 :: GLenum
```


#### `texture22`

``` purescript
texture22 :: GLenum
```


#### `texture23`

``` purescript
texture23 :: GLenum
```


#### `texture24`

``` purescript
texture24 :: GLenum
```


#### `texture25`

``` purescript
texture25 :: GLenum
```


#### `texture26`

``` purescript
texture26 :: GLenum
```


#### `texture27`

``` purescript
texture27 :: GLenum
```


#### `texture28`

``` purescript
texture28 :: GLenum
```


#### `texture29`

``` purescript
texture29 :: GLenum
```


#### `texture3`

``` purescript
texture3 :: GLenum
```


#### `texture30`

``` purescript
texture30 :: GLenum
```


#### `texture31`

``` purescript
texture31 :: GLenum
```


#### `texture4`

``` purescript
texture4 :: GLenum
```


#### `texture5`

``` purescript
texture5 :: GLenum
```


#### `texture6`

``` purescript
texture6 :: GLenum
```


#### `texture7`

``` purescript
texture7 :: GLenum
```


#### `texture8`

``` purescript
texture8 :: GLenum
```


#### `texture9`

``` purescript
texture9 :: GLenum
```


#### `texture2d`

``` purescript
texture2d :: GLenum
```


#### `textureBinding2d`

``` purescript
textureBinding2d :: GLenum
```


#### `textureBindingCubeMap`

``` purescript
textureBindingCubeMap :: GLenum
```


#### `textureCubeMap`

``` purescript
textureCubeMap :: GLenum
```


#### `textureCubeMapNegativeX`

``` purescript
textureCubeMapNegativeX :: GLenum
```


#### `textureCubeMapNegativeY`

``` purescript
textureCubeMapNegativeY :: GLenum
```


#### `textureCubeMapNegativeZ`

``` purescript
textureCubeMapNegativeZ :: GLenum
```


#### `textureCubeMapPositiveX`

``` purescript
textureCubeMapPositiveX :: GLenum
```


#### `textureCubeMapPositiveY`

``` purescript
textureCubeMapPositiveY :: GLenum
```


#### `textureCubeMapPositiveZ`

``` purescript
textureCubeMapPositiveZ :: GLenum
```


#### `textureMagFilter`

``` purescript
textureMagFilter :: GLenum
```


#### `textureMinFilter`

``` purescript
textureMinFilter :: GLenum
```


#### `textureWrapS`

``` purescript
textureWrapS :: GLenum
```


#### `textureWrapT`

``` purescript
textureWrapT :: GLenum
```


#### `triangles`

``` purescript
triangles :: GLenum
```


#### `triangleFan`

``` purescript
triangleFan :: GLenum
```


#### `triangleStrip`

``` purescript
triangleStrip :: GLenum
```


#### `unpackAlignment`

``` purescript
unpackAlignment :: GLenum
```


#### `unpackColorspaceConversionWebgl`

``` purescript
unpackColorspaceConversionWebgl :: GLenum
```


#### `unpackFlipYWebgl`

``` purescript
unpackFlipYWebgl :: GLenum
```


#### `unpackPremultiplyAlphaWebgl`

``` purescript
unpackPremultiplyAlphaWebgl :: GLenum
```


#### `unsignedByte`

``` purescript
unsignedByte :: GLenum
```


#### `unsignedInt`

``` purescript
unsignedInt :: GLenum
```


#### `unsignedShort`

``` purescript
unsignedShort :: GLenum
```


#### `unsignedShort4444`

``` purescript
unsignedShort4444 :: GLenum
```


#### `unsignedShort5551`

``` purescript
unsignedShort5551 :: GLenum
```


#### `unsignedShort565`

``` purescript
unsignedShort565 :: GLenum
```


#### `validateStatus`

``` purescript
validateStatus :: GLenum
```


#### `vendor`

``` purescript
vendor :: GLenum
```


#### `version`

``` purescript
version :: GLenum
```


#### `vertexAttribArrayBufferBinding`

``` purescript
vertexAttribArrayBufferBinding :: GLenum
```


#### `vertexAttribArrayEnabled`

``` purescript
vertexAttribArrayEnabled :: GLenum
```


#### `vertexAttribArrayNormalized`

``` purescript
vertexAttribArrayNormalized :: GLenum
```


#### `vertexAttribArrayPointer`

``` purescript
vertexAttribArrayPointer :: GLenum
```


#### `vertexAttribArraySize`

``` purescript
vertexAttribArraySize :: GLenum
```


#### `vertexAttribArrayStride`

``` purescript
vertexAttribArrayStride :: GLenum
```


#### `vertexAttribArrayType`

``` purescript
vertexAttribArrayType :: GLenum
```


#### `vertexShader`

``` purescript
vertexShader :: GLenum
```


#### `viewport`

``` purescript
viewport :: GLenum
```


#### `zero`

``` purescript
zero :: GLenum
```



## Module Graphics.WebGL.Raw.Types


#### `DOMString`

``` purescript
type DOMString = String
```


#### `BufferDataSource`

``` purescript
type BufferDataSource = Float32Array
```


#### `FloatArray`

``` purescript
type FloatArray = Float32Array
```


#### `GLbitfield`

``` purescript
type GLbitfield = Number
```


#### `GLboolean`

``` purescript
type GLboolean = Boolean
```


#### `GLbyte`

``` purescript
type GLbyte = Number
```


#### `GLclampf`

``` purescript
type GLclampf = Number
```


#### `GLenum`

``` purescript
type GLenum = Number
```


#### `GLfloat`

``` purescript
type GLfloat = Number
```


#### `GLint`

``` purescript
type GLint = Number
```


#### `GLintptr`

``` purescript
type GLintptr = Number
```


#### `GLshort`

``` purescript
type GLshort = Number
```


#### `GLsizei`

``` purescript
type GLsizei = Number
```


#### `GLsizeiptr`

``` purescript
type GLsizeiptr = Number
```


#### `GLubyte`

``` purescript
type GLubyte = Number
```


#### `GLuint`

``` purescript
type GLuint = Number
```


#### `GLushort`

``` purescript
type GLushort = Number
```


#### `ArrayBufferView`

``` purescript
data ArrayBufferView :: *
```


#### `TexImageSource`

``` purescript
data TexImageSource :: *
```


#### `WebGLActiveInfo`

``` purescript
data WebGLActiveInfo :: *
```


#### `WebGLBuffer`

``` purescript
data WebGLBuffer :: *
```


#### `WebGLContext`

``` purescript
data WebGLContext :: *
```


#### `WebGLFramebuffer`

``` purescript
data WebGLFramebuffer :: *
```


#### `WebGLProgram`

``` purescript
data WebGLProgram :: *
```


#### `WebGLRenderbuffer`

``` purescript
data WebGLRenderbuffer :: *
```


#### `WebGLShader`

``` purescript
data WebGLShader :: *
```


#### `WebGLShaderPrecisionFormat`

``` purescript
data WebGLShaderPrecisionFormat :: *
```


#### `WebGLTexture`

``` purescript
data WebGLTexture :: *
```


#### `WebGLUniformLocation`

``` purescript
data WebGLUniformLocation :: *
```


#### `WebGLContextAttributes`

``` purescript
type WebGLContextAttributes = { failIfMajorPerformanceCaveat :: Boolean, preferLowPowerToHighPerformance :: Boolean, preserveDrawingBuffer :: Boolean, premultipliedAlpha :: Boolean, antialias :: Boolean, stencil :: Boolean, depth :: Boolean, alpha :: Boolean }
```



## Module Graphics.WebGL.Raw.Util

#### `toMaybe`

``` purescript
toMaybe :: forall a. a -> Maybe a
```


#### `nullAsEmpty`

``` purescript
nullAsEmpty :: forall a. [a] -> [a]
```