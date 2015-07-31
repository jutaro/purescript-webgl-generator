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
getAttachedShaders :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) (Array WebGLShader)
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
getSupportedExtensions :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Array DOMString)
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
uniform1fv :: forall eff. WebGLContext -> WebGLUniformLocation -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
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
uniform1iv :: forall eff. WebGLContext -> WebGLUniformLocation -> Array Int -> Eff (canvas :: Canvas | eff) Unit
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
uniform2fv :: forall eff. WebGLContext -> WebGLUniformLocation -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
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
uniform2iv :: forall eff. WebGLContext -> WebGLUniformLocation -> Array Int -> Eff (canvas :: Canvas | eff) Unit
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
uniform3fv :: forall eff. WebGLContext -> WebGLUniformLocation -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
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
uniform3iv :: forall eff. WebGLContext -> WebGLUniformLocation -> Array Int -> Eff (canvas :: Canvas | eff) Unit
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
uniform4fv :: forall eff. WebGLContext -> WebGLUniformLocation -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
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
uniform4iv :: forall eff. WebGLContext -> WebGLUniformLocation -> Array Int -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniform4iv_`

``` purescript
uniform4iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniformMatrix2fv`

``` purescript
uniformMatrix2fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniformMatrix2fv_`

``` purescript
uniformMatrix2fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniformMatrix3fv`

``` purescript
uniformMatrix3fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniformMatrix3fv_`

``` purescript
uniformMatrix3fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
```

#### `uniformMatrix4fv`

``` purescript
uniformMatrix4fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
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
vertexAttrib1fv :: forall eff. WebGLContext -> GLuint -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
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
vertexAttrib2fv :: forall eff. WebGLContext -> GLuint -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
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
vertexAttrib3fv :: forall eff. WebGLContext -> GLuint -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
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
vertexAttrib4fv :: forall eff. WebGLContext -> GLuint -> Array GLfloat -> Eff (canvas :: Canvas | eff) Unit
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


