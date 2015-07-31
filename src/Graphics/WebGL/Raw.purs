module Graphics.WebGL.Raw
( activeTexture
, attachShader
, bindAttribLocation
, bindBuffer
, bindFramebuffer
, bindRenderbuffer
, bindTexture
, blendColor
, blendEquation
, blendEquationSeparate
, blendFunc
, blendFuncSeparate
, bufferData
, bufferData_
, bufferSubData
, checkFramebufferStatus
, clear
, clearColor
, clearDepth
, clearStencil
, colorMask
, compileShader
, compressedTexImage2D
, compressedTexSubImage2D
, copyTexImage2D
, copyTexSubImage2D
, createBuffer
, createFramebuffer
, createProgram
, createRenderbuffer
, createShader
, createTexture
, cullFace
, deleteBuffer
, deleteFramebuffer
, deleteProgram
, deleteRenderbuffer
, deleteShader
, deleteTexture
, depthFunc
, depthMask
, depthRange
, detachShader
, disable
, disableVertexAttribArray
, drawArrays
, drawElements
, enable
, enableVertexAttribArray
, finish
, flush
, framebufferRenderbuffer
, framebufferTexture2D
, frontFace
, generateMipmap
, getActiveAttrib
, getActiveUniform
, getAttachedShaders
, getAttribLocation
, getBufferParameter
, getContextAttributes
, getError
, getExtension
, getFramebufferAttachmentParameter
, getParameter
, getProgramInfoLog
, getProgramParameter
, getRenderbufferParameter
, getShaderInfoLog
, getShaderParameter
, getShaderPrecisionFormat
, getShaderSource
, getSupportedExtensions
, getTexParameter
, getUniform
, getUniformLocation
, getVertexAttrib
, getVertexAttribOffset
, hint
, isBuffer
, isContextLost
, isEnabled
, isFramebuffer
, isProgram
, isRenderbuffer
, isShader
, isTexture
, lineWidth
, linkProgram
, pixelStorei
, polygonOffset
, readPixels
, renderbufferStorage
, sampleCoverage
, scissor
, shaderSource
, stencilFunc
, stencilFuncSeparate
, stencilMask
, stencilMaskSeparate
, stencilOp
, stencilOpSeparate
, texImage2D
, texImage2D_
, texParameterf
, texParameteri
, texSubImage2D
, texSubImage2D_
, uniform1f
, uniform1fv
, uniform1fv_
, uniform1i
, uniform1iv
, uniform1iv_
, uniform2f
, uniform2fv
, uniform2fv_
, uniform2i
, uniform2iv
, uniform2iv_
, uniform3f
, uniform3fv
, uniform3fv_
, uniform3i
, uniform3iv
, uniform3iv_
, uniform4f
, uniform4fv
, uniform4fv_
, uniform4i
, uniform4iv
, uniform4iv_
, uniformMatrix2fv
, uniformMatrix2fv_
, uniformMatrix3fv
, uniformMatrix3fv_
, uniformMatrix4fv
, uniformMatrix4fv_
, useProgram
, validateProgram
, vertexAttrib1f
, vertexAttrib1fv
, vertexAttrib1fv_
, vertexAttrib2f
, vertexAttrib2fv
, vertexAttrib2fv_
, vertexAttrib3f
, vertexAttrib3fv
, vertexAttrib3fv_
, vertexAttrib4f
, vertexAttrib4fv
, vertexAttrib4fv_
, vertexAttribPointer
, viewport
) where

import Control.Monad.Eff
import Data.ArrayBuffer.Types
import Data.Function
import Data.Maybe
import Graphics.Canvas
import Graphics.WebGL.Raw.Types
import Graphics.WebGL.Raw.Util
import Prelude

foreign import activeTextureImpl :: forall eff. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) Unit)

activeTexture :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
activeTexture webgl texture = runFn2 activeTextureImpl webgl texture

foreign import attachShaderImpl :: forall eff. Fn3 WebGLContext WebGLProgram WebGLShader (Eff (canvas :: Canvas | eff) Unit)

attachShader :: forall eff. WebGLContext -> WebGLProgram -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
attachShader webgl program shader = runFn3 attachShaderImpl webgl program shader

foreign import bindAttribLocationImpl :: forall eff. Fn4 WebGLContext WebGLProgram GLuint DOMString (Eff (canvas :: Canvas | eff) Unit)

bindAttribLocation :: forall eff. WebGLContext -> WebGLProgram -> GLuint -> DOMString -> Eff (canvas :: Canvas | eff) Unit
bindAttribLocation webgl program index name = runFn4 bindAttribLocationImpl webgl program index name

foreign import bindBufferImpl :: forall eff. Fn3 WebGLContext GLenum WebGLBuffer (Eff (canvas :: Canvas | eff) Unit)

bindBuffer :: forall eff. WebGLContext -> GLenum -> WebGLBuffer -> Eff (canvas :: Canvas | eff) Unit
bindBuffer webgl target buffer = runFn3 bindBufferImpl webgl target buffer

foreign import bindFramebufferImpl :: forall eff. Fn3 WebGLContext GLenum WebGLFramebuffer (Eff (canvas :: Canvas | eff) Unit)

bindFramebuffer :: forall eff. WebGLContext -> GLenum -> WebGLFramebuffer -> Eff (canvas :: Canvas | eff) Unit
bindFramebuffer webgl target framebuffer = runFn3 bindFramebufferImpl webgl target framebuffer

foreign import bindRenderbufferImpl :: forall eff. Fn3 WebGLContext GLenum WebGLRenderbuffer (Eff (canvas :: Canvas | eff) Unit)

bindRenderbuffer :: forall eff. WebGLContext -> GLenum -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) Unit
bindRenderbuffer webgl target renderbuffer = runFn3 bindRenderbufferImpl webgl target renderbuffer

foreign import bindTextureImpl :: forall eff. Fn3 WebGLContext GLenum WebGLTexture (Eff (canvas :: Canvas | eff) Unit)

bindTexture :: forall eff. WebGLContext -> GLenum -> WebGLTexture -> Eff (canvas :: Canvas | eff) Unit
bindTexture webgl target texture = runFn3 bindTextureImpl webgl target texture

foreign import blendColorImpl :: forall eff. Fn5 WebGLContext GLclampf GLclampf GLclampf GLclampf (Eff (canvas :: Canvas | eff) Unit)

blendColor :: forall eff. WebGLContext -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
blendColor webgl red green blue alpha = runFn5 blendColorImpl webgl red green blue alpha

foreign import blendEquationImpl :: forall eff. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) Unit)

blendEquation :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
blendEquation webgl mode = runFn2 blendEquationImpl webgl mode

foreign import blendEquationSeparateImpl :: forall eff. Fn3 WebGLContext GLenum GLenum (Eff (canvas :: Canvas | eff) Unit)

blendEquationSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
blendEquationSeparate webgl modeRGB modeAlpha = runFn3 blendEquationSeparateImpl webgl modeRGB modeAlpha

foreign import blendFuncImpl :: forall eff. Fn3 WebGLContext GLenum GLenum (Eff (canvas :: Canvas | eff) Unit)

blendFunc :: forall eff. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
blendFunc webgl sfactor dfactor = runFn3 blendFuncImpl webgl sfactor dfactor

foreign import blendFuncSeparateImpl :: forall eff. Fn5 WebGLContext GLenum GLenum GLenum GLenum (Eff (canvas :: Canvas | eff) Unit)

blendFuncSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
blendFuncSeparate webgl srcRGB dstRGB srcAlpha dstAlpha = runFn5 blendFuncSeparateImpl webgl srcRGB dstRGB srcAlpha dstAlpha

foreign import bufferDataImpl :: forall eff. Fn4 WebGLContext GLenum BufferDataSource GLenum (Eff (canvas :: Canvas | eff) Unit)

bufferData :: forall eff. WebGLContext -> GLenum -> BufferDataSource -> GLenum -> Eff (canvas :: Canvas | eff) Unit
bufferData webgl target data' usage = runFn4 bufferDataImpl webgl target data' usage

foreign import bufferData_Impl :: forall eff. Fn4 WebGLContext GLenum GLsizeiptr GLenum (Eff (canvas :: Canvas | eff) Unit)

bufferData_ :: forall eff. WebGLContext -> GLenum -> GLsizeiptr -> GLenum -> Eff (canvas :: Canvas | eff) Unit
bufferData_ webgl target size usage = runFn4 bufferData_Impl webgl target size usage

foreign import bufferSubDataImpl :: forall eff. Fn4 WebGLContext GLenum GLintptr BufferDataSource (Eff (canvas :: Canvas | eff) Unit)

bufferSubData :: forall eff. WebGLContext -> GLenum -> GLintptr -> BufferDataSource -> Eff (canvas :: Canvas | eff) Unit
bufferSubData webgl target offset data' = runFn4 bufferSubDataImpl webgl target offset data'

foreign import checkFramebufferStatusImpl :: forall eff. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) GLenum)

checkFramebufferStatus :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) GLenum
checkFramebufferStatus webgl target = runFn2 checkFramebufferStatusImpl webgl target

foreign import clearImpl :: forall eff. Fn2 WebGLContext GLbitfield (Eff (canvas :: Canvas | eff) Unit)

clear :: forall eff. WebGLContext -> GLbitfield -> Eff (canvas :: Canvas | eff) Unit
clear webgl mask = runFn2 clearImpl webgl mask

foreign import clearColorImpl :: forall eff. Fn5 WebGLContext GLclampf GLclampf GLclampf GLclampf (Eff (canvas :: Canvas | eff) Unit)

clearColor :: forall eff. WebGLContext -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
clearColor webgl red green blue alpha = runFn5 clearColorImpl webgl red green blue alpha

foreign import clearDepthImpl :: forall eff. Fn2 WebGLContext GLclampf (Eff (canvas :: Canvas | eff) Unit)

clearDepth :: forall eff. WebGLContext -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
clearDepth webgl depth = runFn2 clearDepthImpl webgl depth

foreign import clearStencilImpl :: forall eff. Fn2 WebGLContext GLint (Eff (canvas :: Canvas | eff) Unit)

clearStencil :: forall eff. WebGLContext -> GLint -> Eff (canvas :: Canvas | eff) Unit
clearStencil webgl s = runFn2 clearStencilImpl webgl s

foreign import colorMaskImpl :: forall eff. Fn5 WebGLContext GLboolean GLboolean GLboolean GLboolean (Eff (canvas :: Canvas | eff) Unit)

colorMask :: forall eff. WebGLContext -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> Eff (canvas :: Canvas | eff) Unit
colorMask webgl red green blue alpha = runFn5 colorMaskImpl webgl red green blue alpha

foreign import compileShaderImpl :: forall eff. Fn2 WebGLContext WebGLShader (Eff (canvas :: Canvas | eff) Unit)

compileShader :: forall eff. WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
compileShader webgl shader = runFn2 compileShaderImpl webgl shader

foreign import compressedTexImage2DImpl :: forall eff. Fn8 WebGLContext GLenum GLint GLenum GLsizei GLsizei GLint ArrayBufferView (Eff (canvas :: Canvas | eff) Unit)

compressedTexImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
compressedTexImage2D webgl target level internalformat width height border data' = runFn8 compressedTexImage2DImpl webgl target level internalformat width height border data'

foreign import compressedTexSubImage2DImpl :: forall eff. Fn9 WebGLContext GLenum GLint GLint GLint GLsizei GLsizei GLenum ArrayBufferView (Eff (canvas :: Canvas | eff) Unit)

compressedTexSubImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
compressedTexSubImage2D webgl target level xoffset yoffset width height format data' = runFn9 compressedTexSubImage2DImpl webgl target level xoffset yoffset width height format data'

foreign import copyTexImage2DImpl :: forall eff. Fn9 WebGLContext GLenum GLint GLenum GLint GLint GLsizei GLsizei GLint (Eff (canvas :: Canvas | eff) Unit)

copyTexImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> Eff (canvas :: Canvas | eff) Unit
copyTexImage2D webgl target level internalformat x y width height border = runFn9 copyTexImage2DImpl webgl target level internalformat x y width height border

foreign import copyTexSubImage2DImpl :: forall eff. Fn9 WebGLContext GLenum GLint GLint GLint GLint GLint GLsizei GLsizei (Eff (canvas :: Canvas | eff) Unit)

copyTexSubImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
copyTexSubImage2D webgl target level xoffset yoffset x y width height = runFn9 copyTexSubImage2DImpl webgl target level xoffset yoffset x y width height

foreign import createBufferImpl :: forall eff. Fn1 WebGLContext (Eff (canvas :: Canvas | eff) WebGLBuffer)

createBuffer :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLBuffer)
createBuffer webgl = runFn1 createBufferImpl webgl >>= toMaybe >>> return

foreign import createFramebufferImpl :: forall eff. Fn1 WebGLContext (Eff (canvas :: Canvas | eff) WebGLFramebuffer)

createFramebuffer :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLFramebuffer)
createFramebuffer webgl = runFn1 createFramebufferImpl webgl >>= toMaybe >>> return

foreign import createProgramImpl :: forall eff. Fn1 WebGLContext (Eff (canvas :: Canvas | eff) WebGLProgram)

createProgram :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLProgram)
createProgram webgl = runFn1 createProgramImpl webgl >>= toMaybe >>> return

foreign import createRenderbufferImpl :: forall eff. Fn1 WebGLContext (Eff (canvas :: Canvas | eff) WebGLRenderbuffer)

createRenderbuffer :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLRenderbuffer)
createRenderbuffer webgl = runFn1 createRenderbufferImpl webgl >>= toMaybe >>> return

foreign import createShaderImpl :: forall eff. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) WebGLShader)

createShader :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe WebGLShader)
createShader webgl type' = runFn2 createShaderImpl webgl type' >>= toMaybe >>> return

foreign import createTextureImpl :: forall eff. Fn1 WebGLContext (Eff (canvas :: Canvas | eff) WebGLTexture)

createTexture :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLTexture)
createTexture webgl = runFn1 createTextureImpl webgl >>= toMaybe >>> return

foreign import cullFaceImpl :: forall eff. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) Unit)

cullFace :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
cullFace webgl mode = runFn2 cullFaceImpl webgl mode

foreign import deleteBufferImpl :: forall eff. Fn2 WebGLContext WebGLBuffer (Eff (canvas :: Canvas | eff) Unit)

deleteBuffer :: forall eff. WebGLContext -> WebGLBuffer -> Eff (canvas :: Canvas | eff) Unit
deleteBuffer webgl buffer = runFn2 deleteBufferImpl webgl buffer

foreign import deleteFramebufferImpl :: forall eff. Fn2 WebGLContext WebGLFramebuffer (Eff (canvas :: Canvas | eff) Unit)

deleteFramebuffer :: forall eff. WebGLContext -> WebGLFramebuffer -> Eff (canvas :: Canvas | eff) Unit
deleteFramebuffer webgl framebuffer = runFn2 deleteFramebufferImpl webgl framebuffer

foreign import deleteProgramImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Eff (canvas :: Canvas | eff) Unit)

deleteProgram :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
deleteProgram webgl program = runFn2 deleteProgramImpl webgl program

foreign import deleteRenderbufferImpl :: forall eff. Fn2 WebGLContext WebGLRenderbuffer (Eff (canvas :: Canvas | eff) Unit)

deleteRenderbuffer :: forall eff. WebGLContext -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) Unit
deleteRenderbuffer webgl renderbuffer = runFn2 deleteRenderbufferImpl webgl renderbuffer

foreign import deleteShaderImpl :: forall eff. Fn2 WebGLContext WebGLShader (Eff (canvas :: Canvas | eff) Unit)

deleteShader :: forall eff. WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
deleteShader webgl shader = runFn2 deleteShaderImpl webgl shader

foreign import deleteTextureImpl :: forall eff. Fn2 WebGLContext WebGLTexture (Eff (canvas :: Canvas | eff) Unit)

deleteTexture :: forall eff. WebGLContext -> WebGLTexture -> Eff (canvas :: Canvas | eff) Unit
deleteTexture webgl texture = runFn2 deleteTextureImpl webgl texture

foreign import depthFuncImpl :: forall eff. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) Unit)

depthFunc :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
depthFunc webgl func = runFn2 depthFuncImpl webgl func

foreign import depthMaskImpl :: forall eff. Fn2 WebGLContext GLboolean (Eff (canvas :: Canvas | eff) Unit)

depthMask :: forall eff. WebGLContext -> GLboolean -> Eff (canvas :: Canvas | eff) Unit
depthMask webgl flag = runFn2 depthMaskImpl webgl flag

foreign import depthRangeImpl :: forall eff. Fn3 WebGLContext GLclampf GLclampf (Eff (canvas :: Canvas | eff) Unit)

depthRange :: forall eff. WebGLContext -> GLclampf -> GLclampf -> Eff (canvas :: Canvas | eff) Unit
depthRange webgl zNear zFar = runFn3 depthRangeImpl webgl zNear zFar

foreign import detachShaderImpl :: forall eff. Fn3 WebGLContext WebGLProgram WebGLShader (Eff (canvas :: Canvas | eff) Unit)

detachShader :: forall eff. WebGLContext -> WebGLProgram -> WebGLShader -> Eff (canvas :: Canvas | eff) Unit
detachShader webgl program shader = runFn3 detachShaderImpl webgl program shader

foreign import disableImpl :: forall eff. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) Unit)

disable :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
disable webgl cap = runFn2 disableImpl webgl cap

foreign import disableVertexAttribArrayImpl :: forall eff. Fn2 WebGLContext GLuint (Eff (canvas :: Canvas | eff) Unit)

disableVertexAttribArray :: forall eff. WebGLContext -> GLuint -> Eff (canvas :: Canvas | eff) Unit
disableVertexAttribArray webgl index = runFn2 disableVertexAttribArrayImpl webgl index

foreign import drawArraysImpl :: forall eff. Fn4 WebGLContext GLenum GLint GLsizei (Eff (canvas :: Canvas | eff) Unit)

drawArrays :: forall eff. WebGLContext -> GLenum -> GLint -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
drawArrays webgl mode first count = runFn4 drawArraysImpl webgl mode first count

foreign import drawElementsImpl :: forall eff. Fn5 WebGLContext GLenum GLsizei GLenum GLintptr (Eff (canvas :: Canvas | eff) Unit)

drawElements :: forall eff. WebGLContext -> GLenum -> GLsizei -> GLenum -> GLintptr -> Eff (canvas :: Canvas | eff) Unit
drawElements webgl mode count type' offset = runFn5 drawElementsImpl webgl mode count type' offset

foreign import enableImpl :: forall eff. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) Unit)

enable :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
enable webgl cap = runFn2 enableImpl webgl cap

foreign import enableVertexAttribArrayImpl :: forall eff. Fn2 WebGLContext GLuint (Eff (canvas :: Canvas | eff) Unit)

enableVertexAttribArray :: forall eff. WebGLContext -> GLuint -> Eff (canvas :: Canvas | eff) Unit
enableVertexAttribArray webgl index = runFn2 enableVertexAttribArrayImpl webgl index

foreign import finishImpl :: forall eff. Fn1 WebGLContext (Eff (canvas :: Canvas | eff) Unit)

finish :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) Unit
finish webgl = runFn1 finishImpl webgl

foreign import flushImpl :: forall eff. Fn1 WebGLContext (Eff (canvas :: Canvas | eff) Unit)

flush :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) Unit
flush webgl = runFn1 flushImpl webgl

foreign import framebufferRenderbufferImpl :: forall eff. Fn5 WebGLContext GLenum GLenum GLenum WebGLRenderbuffer (Eff (canvas :: Canvas | eff) Unit)

framebufferRenderbuffer :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) Unit
framebufferRenderbuffer webgl target attachment renderbuffertarget renderbuffer = runFn5 framebufferRenderbufferImpl webgl target attachment renderbuffertarget renderbuffer

foreign import framebufferTexture2DImpl :: forall eff. Fn6 WebGLContext GLenum GLenum GLenum WebGLTexture GLint (Eff (canvas :: Canvas | eff) Unit)

framebufferTexture2D :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> WebGLTexture -> GLint -> Eff (canvas :: Canvas | eff) Unit
framebufferTexture2D webgl target attachment textarget texture level = runFn6 framebufferTexture2DImpl webgl target attachment textarget texture level

foreign import frontFaceImpl :: forall eff. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) Unit)

frontFace :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
frontFace webgl mode = runFn2 frontFaceImpl webgl mode

foreign import generateMipmapImpl :: forall eff. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) Unit)

generateMipmap :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) Unit
generateMipmap webgl target = runFn2 generateMipmapImpl webgl target

foreign import getActiveAttribImpl :: forall eff. Fn3 WebGLContext WebGLProgram GLuint (Eff (canvas :: Canvas | eff) WebGLActiveInfo)

getActiveAttrib :: forall eff. WebGLContext -> WebGLProgram -> GLuint -> Eff (canvas :: Canvas | eff) (Maybe WebGLActiveInfo)
getActiveAttrib webgl program index = runFn3 getActiveAttribImpl webgl program index >>= toMaybe >>> return

foreign import getActiveUniformImpl :: forall eff. Fn3 WebGLContext WebGLProgram GLuint (Eff (canvas :: Canvas | eff) WebGLActiveInfo)

getActiveUniform :: forall eff. WebGLContext -> WebGLProgram -> GLuint -> Eff (canvas :: Canvas | eff) (Maybe WebGLActiveInfo)
getActiveUniform webgl program index = runFn3 getActiveUniformImpl webgl program index >>= toMaybe >>> return

foreign import getAttachedShadersImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Eff (canvas :: Canvas | eff) (Array WebGLShader))

getAttachedShaders :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) (Array WebGLShader)
getAttachedShaders webgl program = runFn2 getAttachedShadersImpl webgl program >>= nullAsEmpty >>> return

foreign import getAttribLocationImpl :: forall eff. Fn3 WebGLContext WebGLProgram DOMString (Eff (canvas :: Canvas | eff) GLint)

getAttribLocation :: forall eff. WebGLContext -> WebGLProgram -> DOMString -> Eff (canvas :: Canvas | eff) GLint
getAttribLocation webgl program name = runFn3 getAttribLocationImpl webgl program name

foreign import getBufferParameterImpl :: forall eff a. Fn3 WebGLContext GLenum GLenum (Eff (canvas :: Canvas | eff) a)

getBufferParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
getBufferParameter webgl target pname = runFn3 getBufferParameterImpl webgl target pname >>= toMaybe >>> return

foreign import getContextAttributesImpl :: forall eff. Fn1 WebGLContext (Eff (canvas :: Canvas | eff) WebGLContextAttributes)

getContextAttributes :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Maybe WebGLContextAttributes)
getContextAttributes webgl = runFn1 getContextAttributesImpl webgl >>= toMaybe >>> return

foreign import getErrorImpl :: forall eff. Fn1 WebGLContext (Eff (canvas :: Canvas | eff) GLenum)

getError :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) GLenum
getError webgl = runFn1 getErrorImpl webgl

foreign import getExtensionImpl :: forall eff a. Fn2 WebGLContext DOMString (Eff (canvas :: Canvas | eff) a)

getExtension :: forall eff a. WebGLContext -> DOMString -> Eff (canvas :: Canvas | eff) (Maybe a)
getExtension webgl name = runFn2 getExtensionImpl webgl name >>= toMaybe >>> return

foreign import getFramebufferAttachmentParameterImpl :: forall eff a. Fn4 WebGLContext GLenum GLenum GLenum (Eff (canvas :: Canvas | eff) a)

getFramebufferAttachmentParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
getFramebufferAttachmentParameter webgl target attachment pname = runFn4 getFramebufferAttachmentParameterImpl webgl target attachment pname >>= toMaybe >>> return

foreign import getParameterImpl :: forall eff a. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) a)

getParameter :: forall eff a. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
getParameter webgl pname = runFn2 getParameterImpl webgl pname >>= toMaybe >>> return

foreign import getProgramInfoLogImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Eff (canvas :: Canvas | eff) DOMString)

getProgramInfoLog :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) (Maybe DOMString)
getProgramInfoLog webgl program = runFn2 getProgramInfoLogImpl webgl program >>= toMaybe >>> return

foreign import getProgramParameterImpl :: forall eff a. Fn3 WebGLContext WebGLProgram GLenum (Eff (canvas :: Canvas | eff) a)

getProgramParameter :: forall eff a. WebGLContext -> WebGLProgram -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
getProgramParameter webgl program pname = runFn3 getProgramParameterImpl webgl program pname >>= toMaybe >>> return

foreign import getRenderbufferParameterImpl :: forall eff a. Fn3 WebGLContext GLenum GLenum (Eff (canvas :: Canvas | eff) a)

getRenderbufferParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
getRenderbufferParameter webgl target pname = runFn3 getRenderbufferParameterImpl webgl target pname >>= toMaybe >>> return

foreign import getShaderInfoLogImpl :: forall eff. Fn2 WebGLContext WebGLShader (Eff (canvas :: Canvas | eff) DOMString)

getShaderInfoLog :: forall eff. WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) (Maybe DOMString)
getShaderInfoLog webgl shader = runFn2 getShaderInfoLogImpl webgl shader >>= toMaybe >>> return

foreign import getShaderParameterImpl :: forall eff a. Fn3 WebGLContext WebGLShader GLenum (Eff (canvas :: Canvas | eff) a)

getShaderParameter :: forall eff a. WebGLContext -> WebGLShader -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
getShaderParameter webgl shader pname = runFn3 getShaderParameterImpl webgl shader pname >>= toMaybe >>> return

foreign import getShaderPrecisionFormatImpl :: forall eff. Fn3 WebGLContext GLenum GLenum (Eff (canvas :: Canvas | eff) WebGLShaderPrecisionFormat)

getShaderPrecisionFormat :: forall eff. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe WebGLShaderPrecisionFormat)
getShaderPrecisionFormat webgl shadertype precisiontype = runFn3 getShaderPrecisionFormatImpl webgl shadertype precisiontype >>= toMaybe >>> return

foreign import getShaderSourceImpl :: forall eff. Fn2 WebGLContext WebGLShader (Eff (canvas :: Canvas | eff) DOMString)

getShaderSource :: forall eff. WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) (Maybe DOMString)
getShaderSource webgl shader = runFn2 getShaderSourceImpl webgl shader >>= toMaybe >>> return

foreign import getSupportedExtensionsImpl :: forall eff. Fn1 WebGLContext (Eff (canvas :: Canvas | eff) (Array DOMString))

getSupportedExtensions :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) (Array DOMString)
getSupportedExtensions webgl = runFn1 getSupportedExtensionsImpl webgl >>= nullAsEmpty >>> return

foreign import getTexParameterImpl :: forall eff a. Fn3 WebGLContext GLenum GLenum (Eff (canvas :: Canvas | eff) a)

getTexParameter :: forall eff a. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
getTexParameter webgl target pname = runFn3 getTexParameterImpl webgl target pname >>= toMaybe >>> return

foreign import getUniformImpl :: forall eff a. Fn3 WebGLContext WebGLProgram WebGLUniformLocation (Eff (canvas :: Canvas | eff) a)

getUniform :: forall eff a. WebGLContext -> WebGLProgram -> WebGLUniformLocation -> Eff (canvas :: Canvas | eff) (Maybe a)
getUniform webgl program location = runFn3 getUniformImpl webgl program location >>= toMaybe >>> return

foreign import getUniformLocationImpl :: forall eff. Fn3 WebGLContext WebGLProgram DOMString (Eff (canvas :: Canvas | eff) WebGLUniformLocation)

getUniformLocation :: forall eff. WebGLContext -> WebGLProgram -> DOMString -> Eff (canvas :: Canvas | eff) (Maybe WebGLUniformLocation)
getUniformLocation webgl program name = runFn3 getUniformLocationImpl webgl program name >>= toMaybe >>> return

foreign import getVertexAttribImpl :: forall eff a. Fn3 WebGLContext GLuint GLenum (Eff (canvas :: Canvas | eff) a)

getVertexAttrib :: forall eff a. WebGLContext -> GLuint -> GLenum -> Eff (canvas :: Canvas | eff) (Maybe a)
getVertexAttrib webgl index pname = runFn3 getVertexAttribImpl webgl index pname >>= toMaybe >>> return

foreign import getVertexAttribOffsetImpl :: forall eff. Fn3 WebGLContext GLuint GLenum (Eff (canvas :: Canvas | eff) GLsizeiptr)

getVertexAttribOffset :: forall eff. WebGLContext -> GLuint -> GLenum -> Eff (canvas :: Canvas | eff) GLsizeiptr
getVertexAttribOffset webgl index pname = runFn3 getVertexAttribOffsetImpl webgl index pname

foreign import hintImpl :: forall eff. Fn3 WebGLContext GLenum GLenum (Eff (canvas :: Canvas | eff) Unit)

hint :: forall eff. WebGLContext -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
hint webgl target mode = runFn3 hintImpl webgl target mode

foreign import isBufferImpl :: forall eff. Fn2 WebGLContext WebGLBuffer (Eff (canvas :: Canvas | eff) GLboolean)

isBuffer :: forall eff. WebGLContext -> WebGLBuffer -> Eff (canvas :: Canvas | eff) GLboolean
isBuffer webgl buffer = runFn2 isBufferImpl webgl buffer

foreign import isContextLostImpl :: forall eff. Fn1 WebGLContext (Eff (canvas :: Canvas | eff) Boolean)

isContextLost :: forall eff. WebGLContext -> Eff (canvas :: Canvas | eff) Boolean
isContextLost webgl = runFn1 isContextLostImpl webgl

foreign import isEnabledImpl :: forall eff. Fn2 WebGLContext GLenum (Eff (canvas :: Canvas | eff) GLboolean)

isEnabled :: forall eff. WebGLContext -> GLenum -> Eff (canvas :: Canvas | eff) GLboolean
isEnabled webgl cap = runFn2 isEnabledImpl webgl cap

foreign import isFramebufferImpl :: forall eff. Fn2 WebGLContext WebGLFramebuffer (Eff (canvas :: Canvas | eff) GLboolean)

isFramebuffer :: forall eff. WebGLContext -> WebGLFramebuffer -> Eff (canvas :: Canvas | eff) GLboolean
isFramebuffer webgl framebuffer = runFn2 isFramebufferImpl webgl framebuffer

foreign import isProgramImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Eff (canvas :: Canvas | eff) GLboolean)

isProgram :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) GLboolean
isProgram webgl program = runFn2 isProgramImpl webgl program

foreign import isRenderbufferImpl :: forall eff. Fn2 WebGLContext WebGLRenderbuffer (Eff (canvas :: Canvas | eff) GLboolean)

isRenderbuffer :: forall eff. WebGLContext -> WebGLRenderbuffer -> Eff (canvas :: Canvas | eff) GLboolean
isRenderbuffer webgl renderbuffer = runFn2 isRenderbufferImpl webgl renderbuffer

foreign import isShaderImpl :: forall eff. Fn2 WebGLContext WebGLShader (Eff (canvas :: Canvas | eff) GLboolean)

isShader :: forall eff. WebGLContext -> WebGLShader -> Eff (canvas :: Canvas | eff) GLboolean
isShader webgl shader = runFn2 isShaderImpl webgl shader

foreign import isTextureImpl :: forall eff. Fn2 WebGLContext WebGLTexture (Eff (canvas :: Canvas | eff) GLboolean)

isTexture :: forall eff. WebGLContext -> WebGLTexture -> Eff (canvas :: Canvas | eff) GLboolean
isTexture webgl texture = runFn2 isTextureImpl webgl texture

foreign import lineWidthImpl :: forall eff. Fn2 WebGLContext GLfloat (Eff (canvas :: Canvas | eff) Unit)

lineWidth :: forall eff. WebGLContext -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
lineWidth webgl width = runFn2 lineWidthImpl webgl width

foreign import linkProgramImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Eff (canvas :: Canvas | eff) Unit)

linkProgram :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
linkProgram webgl program = runFn2 linkProgramImpl webgl program

foreign import pixelStoreiImpl :: forall eff. Fn3 WebGLContext GLenum GLint (Eff (canvas :: Canvas | eff) Unit)

pixelStorei :: forall eff. WebGLContext -> GLenum -> GLint -> Eff (canvas :: Canvas | eff) Unit
pixelStorei webgl pname param = runFn3 pixelStoreiImpl webgl pname param

foreign import polygonOffsetImpl :: forall eff. Fn3 WebGLContext GLfloat GLfloat (Eff (canvas :: Canvas | eff) Unit)

polygonOffset :: forall eff. WebGLContext -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
polygonOffset webgl factor units = runFn3 polygonOffsetImpl webgl factor units

foreign import readPixelsImpl :: forall eff. Fn8 WebGLContext GLint GLint GLsizei GLsizei GLenum GLenum ArrayBufferView (Eff (canvas :: Canvas | eff) Unit)

readPixels :: forall eff. WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
readPixels webgl x y width height format type' pixels = runFn8 readPixelsImpl webgl x y width height format type' pixels

foreign import renderbufferStorageImpl :: forall eff. Fn5 WebGLContext GLenum GLenum GLsizei GLsizei (Eff (canvas :: Canvas | eff) Unit)

renderbufferStorage :: forall eff. WebGLContext -> GLenum -> GLenum -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
renderbufferStorage webgl target internalformat width height = runFn5 renderbufferStorageImpl webgl target internalformat width height

foreign import sampleCoverageImpl :: forall eff. Fn3 WebGLContext GLclampf GLboolean (Eff (canvas :: Canvas | eff) Unit)

sampleCoverage :: forall eff. WebGLContext -> GLclampf -> GLboolean -> Eff (canvas :: Canvas | eff) Unit
sampleCoverage webgl value invert = runFn3 sampleCoverageImpl webgl value invert

foreign import scissorImpl :: forall eff. Fn5 WebGLContext GLint GLint GLsizei GLsizei (Eff (canvas :: Canvas | eff) Unit)

scissor :: forall eff. WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
scissor webgl x y width height = runFn5 scissorImpl webgl x y width height

foreign import shaderSourceImpl :: forall eff. Fn3 WebGLContext WebGLShader DOMString (Eff (canvas :: Canvas | eff) Unit)

shaderSource :: forall eff. WebGLContext -> WebGLShader -> DOMString -> Eff (canvas :: Canvas | eff) Unit
shaderSource webgl shader source = runFn3 shaderSourceImpl webgl shader source

foreign import stencilFuncImpl :: forall eff. Fn4 WebGLContext GLenum GLint GLuint (Eff (canvas :: Canvas | eff) Unit)

stencilFunc :: forall eff. WebGLContext -> GLenum -> GLint -> GLuint -> Eff (canvas :: Canvas | eff) Unit
stencilFunc webgl func ref mask = runFn4 stencilFuncImpl webgl func ref mask

foreign import stencilFuncSeparateImpl :: forall eff. Fn5 WebGLContext GLenum GLenum GLint GLuint (Eff (canvas :: Canvas | eff) Unit)

stencilFuncSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> GLint -> GLuint -> Eff (canvas :: Canvas | eff) Unit
stencilFuncSeparate webgl face func ref mask = runFn5 stencilFuncSeparateImpl webgl face func ref mask

foreign import stencilMaskImpl :: forall eff. Fn2 WebGLContext GLuint (Eff (canvas :: Canvas | eff) Unit)

stencilMask :: forall eff. WebGLContext -> GLuint -> Eff (canvas :: Canvas | eff) Unit
stencilMask webgl mask = runFn2 stencilMaskImpl webgl mask

foreign import stencilMaskSeparateImpl :: forall eff. Fn3 WebGLContext GLenum GLuint (Eff (canvas :: Canvas | eff) Unit)

stencilMaskSeparate :: forall eff. WebGLContext -> GLenum -> GLuint -> Eff (canvas :: Canvas | eff) Unit
stencilMaskSeparate webgl face mask = runFn3 stencilMaskSeparateImpl webgl face mask

foreign import stencilOpImpl :: forall eff. Fn4 WebGLContext GLenum GLenum GLenum (Eff (canvas :: Canvas | eff) Unit)

stencilOp :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
stencilOp webgl fail zfail zpass = runFn4 stencilOpImpl webgl fail zfail zpass

foreign import stencilOpSeparateImpl :: forall eff. Fn5 WebGLContext GLenum GLenum GLenum GLenum (Eff (canvas :: Canvas | eff) Unit)

stencilOpSeparate :: forall eff. WebGLContext -> GLenum -> GLenum -> GLenum -> GLenum -> Eff (canvas :: Canvas | eff) Unit
stencilOpSeparate webgl face fail zfail zpass = runFn5 stencilOpSeparateImpl webgl face fail zfail zpass

foreign import texImage2DImpl :: forall eff. Fn7 WebGLContext GLenum GLint GLenum GLenum GLenum TexImageSource (Eff (canvas :: Canvas | eff) Unit)

texImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLenum -> GLenum -> TexImageSource -> Eff (canvas :: Canvas | eff) Unit
texImage2D webgl target level internalformat format type' source = runFn7 texImage2DImpl webgl target level internalformat format type' source

foreign import texImage2D_Impl :: forall eff. Fn10 WebGLContext GLenum GLint GLenum GLsizei GLsizei GLint GLenum GLenum ArrayBufferView (Eff (canvas :: Canvas | eff) Unit)

texImage2D_ :: forall eff. WebGLContext -> GLenum -> GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> GLenum -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
texImage2D_ webgl target level internalformat width height border format type' pixels = runFn10 texImage2D_Impl webgl target level internalformat width height border format type' pixels

foreign import texParameterfImpl :: forall eff. Fn4 WebGLContext GLenum GLenum GLfloat (Eff (canvas :: Canvas | eff) Unit)

texParameterf :: forall eff. WebGLContext -> GLenum -> GLenum -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
texParameterf webgl target pname param = runFn4 texParameterfImpl webgl target pname param

foreign import texParameteriImpl :: forall eff. Fn4 WebGLContext GLenum GLenum GLint (Eff (canvas :: Canvas | eff) Unit)

texParameteri :: forall eff. WebGLContext -> GLenum -> GLenum -> GLint -> Eff (canvas :: Canvas | eff) Unit
texParameteri webgl target pname param = runFn4 texParameteriImpl webgl target pname param

foreign import texSubImage2DImpl :: forall eff. Fn8 WebGLContext GLenum GLint GLint GLint GLenum GLenum TexImageSource (Eff (canvas :: Canvas | eff) Unit)

texSubImage2D :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLenum -> GLenum -> TexImageSource -> Eff (canvas :: Canvas | eff) Unit
texSubImage2D webgl target level xoffset yoffset format type' source = runFn8 texSubImage2DImpl webgl target level xoffset yoffset format type' source

foreign import texSubImage2D_Impl :: forall eff. Fn10 WebGLContext GLenum GLint GLint GLint GLsizei GLsizei GLenum GLenum ArrayBufferView (Eff (canvas :: Canvas | eff) Unit)

texSubImage2D_ :: forall eff. WebGLContext -> GLenum -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> ArrayBufferView -> Eff (canvas :: Canvas | eff) Unit
texSubImage2D_ webgl target level xoffset yoffset width height format type' pixels = runFn10 texSubImage2D_Impl webgl target level xoffset yoffset width height format type' pixels

foreign import uniform1fImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation GLfloat (Eff (canvas :: Canvas | eff) Unit)

uniform1f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
uniform1f webgl location x = runFn3 uniform1fImpl webgl location x

foreign import uniform1fvImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array GLfloat) (Eff (canvas :: Canvas | eff) Unit)

uniform1fv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array GLfloat) -> Eff (canvas :: Canvas | eff) Unit
uniform1fv webgl location v = runFn3 uniform1fvImpl webgl location v

foreign import uniform1fv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Float32Array (Eff (canvas :: Canvas | eff) Unit)

uniform1fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
uniform1fv_ webgl location v = runFn3 uniform1fv_Impl webgl location v

foreign import uniform1iImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation GLint (Eff (canvas :: Canvas | eff) Unit)

uniform1i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> Eff (canvas :: Canvas | eff) Unit
uniform1i webgl location x = runFn3 uniform1iImpl webgl location x

foreign import uniform1ivImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array Int) (Eff (canvas :: Canvas | eff) Unit)

uniform1iv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array Int) -> Eff (canvas :: Canvas | eff) Unit
uniform1iv webgl location v = runFn3 uniform1ivImpl webgl location v

foreign import uniform1iv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Int32Array (Eff (canvas :: Canvas | eff) Unit)

uniform1iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
uniform1iv_ webgl location v = runFn3 uniform1iv_Impl webgl location v

foreign import uniform2fImpl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLfloat GLfloat (Eff (canvas :: Canvas | eff) Unit)

uniform2f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
uniform2f webgl location x y = runFn4 uniform2fImpl webgl location x y

foreign import uniform2fvImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array GLfloat) (Eff (canvas :: Canvas | eff) Unit)

uniform2fv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array GLfloat) -> Eff (canvas :: Canvas | eff) Unit
uniform2fv webgl location v = runFn3 uniform2fvImpl webgl location v

foreign import uniform2fv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Float32Array (Eff (canvas :: Canvas | eff) Unit)

uniform2fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
uniform2fv_ webgl location v = runFn3 uniform2fv_Impl webgl location v

foreign import uniform2iImpl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLint GLint (Eff (canvas :: Canvas | eff) Unit)

uniform2i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> Eff (canvas :: Canvas | eff) Unit
uniform2i webgl location x y = runFn4 uniform2iImpl webgl location x y

foreign import uniform2ivImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array Int) (Eff (canvas :: Canvas | eff) Unit)

uniform2iv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array Int) -> Eff (canvas :: Canvas | eff) Unit
uniform2iv webgl location v = runFn3 uniform2ivImpl webgl location v

foreign import uniform2iv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Int32Array (Eff (canvas :: Canvas | eff) Unit)

uniform2iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
uniform2iv_ webgl location v = runFn3 uniform2iv_Impl webgl location v

foreign import uniform3fImpl :: forall eff. Fn5 WebGLContext WebGLUniformLocation GLfloat GLfloat GLfloat (Eff (canvas :: Canvas | eff) Unit)

uniform3f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
uniform3f webgl location x y z = runFn5 uniform3fImpl webgl location x y z

foreign import uniform3fvImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array GLfloat) (Eff (canvas :: Canvas | eff) Unit)

uniform3fv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array GLfloat) -> Eff (canvas :: Canvas | eff) Unit
uniform3fv webgl location v = runFn3 uniform3fvImpl webgl location v

foreign import uniform3fv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Float32Array (Eff (canvas :: Canvas | eff) Unit)

uniform3fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
uniform3fv_ webgl location v = runFn3 uniform3fv_Impl webgl location v

foreign import uniform3iImpl :: forall eff. Fn5 WebGLContext WebGLUniformLocation GLint GLint GLint (Eff (canvas :: Canvas | eff) Unit)

uniform3i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> GLint -> Eff (canvas :: Canvas | eff) Unit
uniform3i webgl location x y z = runFn5 uniform3iImpl webgl location x y z

foreign import uniform3ivImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array Int) (Eff (canvas :: Canvas | eff) Unit)

uniform3iv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array Int) -> Eff (canvas :: Canvas | eff) Unit
uniform3iv webgl location v = runFn3 uniform3ivImpl webgl location v

foreign import uniform3iv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Int32Array (Eff (canvas :: Canvas | eff) Unit)

uniform3iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
uniform3iv_ webgl location v = runFn3 uniform3iv_Impl webgl location v

foreign import uniform4fImpl :: forall eff. Fn6 WebGLContext WebGLUniformLocation GLfloat GLfloat GLfloat GLfloat (Eff (canvas :: Canvas | eff) Unit)

uniform4f :: forall eff. WebGLContext -> WebGLUniformLocation -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
uniform4f webgl location x y z w = runFn6 uniform4fImpl webgl location x y z w

foreign import uniform4fvImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array GLfloat) (Eff (canvas :: Canvas | eff) Unit)

uniform4fv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array GLfloat) -> Eff (canvas :: Canvas | eff) Unit
uniform4fv webgl location v = runFn3 uniform4fvImpl webgl location v

foreign import uniform4fv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Float32Array (Eff (canvas :: Canvas | eff) Unit)

uniform4fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
uniform4fv_ webgl location v = runFn3 uniform4fv_Impl webgl location v

foreign import uniform4iImpl :: forall eff. Fn6 WebGLContext WebGLUniformLocation GLint GLint GLint GLint (Eff (canvas :: Canvas | eff) Unit)

uniform4i :: forall eff. WebGLContext -> WebGLUniformLocation -> GLint -> GLint -> GLint -> GLint -> Eff (canvas :: Canvas | eff) Unit
uniform4i webgl location x y z w = runFn6 uniform4iImpl webgl location x y z w

foreign import uniform4ivImpl :: forall eff. Fn3 WebGLContext WebGLUniformLocation (Array Int) (Eff (canvas :: Canvas | eff) Unit)

uniform4iv :: forall eff. WebGLContext -> WebGLUniformLocation -> (Array Int) -> Eff (canvas :: Canvas | eff) Unit
uniform4iv webgl location v = runFn3 uniform4ivImpl webgl location v

foreign import uniform4iv_Impl :: forall eff. Fn3 WebGLContext WebGLUniformLocation Int32Array (Eff (canvas :: Canvas | eff) Unit)

uniform4iv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> Int32Array -> Eff (canvas :: Canvas | eff) Unit
uniform4iv_ webgl location v = runFn3 uniform4iv_Impl webgl location v

foreign import uniformMatrix2fvImpl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean (Array GLfloat) (Eff (canvas :: Canvas | eff) Unit)

uniformMatrix2fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> (Array GLfloat) -> Eff (canvas :: Canvas | eff) Unit
uniformMatrix2fv webgl location transpose value = runFn4 uniformMatrix2fvImpl webgl location transpose value

foreign import uniformMatrix2fv_Impl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean Float32Array (Eff (canvas :: Canvas | eff) Unit)

uniformMatrix2fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
uniformMatrix2fv_ webgl location transpose value = runFn4 uniformMatrix2fv_Impl webgl location transpose value

foreign import uniformMatrix3fvImpl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean (Array GLfloat) (Eff (canvas :: Canvas | eff) Unit)

uniformMatrix3fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> (Array GLfloat) -> Eff (canvas :: Canvas | eff) Unit
uniformMatrix3fv webgl location transpose value = runFn4 uniformMatrix3fvImpl webgl location transpose value

foreign import uniformMatrix3fv_Impl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean Float32Array (Eff (canvas :: Canvas | eff) Unit)

uniformMatrix3fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
uniformMatrix3fv_ webgl location transpose value = runFn4 uniformMatrix3fv_Impl webgl location transpose value

foreign import uniformMatrix4fvImpl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean (Array GLfloat) (Eff (canvas :: Canvas | eff) Unit)

uniformMatrix4fv :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> (Array GLfloat) -> Eff (canvas :: Canvas | eff) Unit
uniformMatrix4fv webgl location transpose value = runFn4 uniformMatrix4fvImpl webgl location transpose value

foreign import uniformMatrix4fv_Impl :: forall eff. Fn4 WebGLContext WebGLUniformLocation GLboolean Float32Array (Eff (canvas :: Canvas | eff) Unit)

uniformMatrix4fv_ :: forall eff. WebGLContext -> WebGLUniformLocation -> GLboolean -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
uniformMatrix4fv_ webgl location transpose value = runFn4 uniformMatrix4fv_Impl webgl location transpose value

foreign import useProgramImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Eff (canvas :: Canvas | eff) Unit)

useProgram :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
useProgram webgl program = runFn2 useProgramImpl webgl program

foreign import validateProgramImpl :: forall eff. Fn2 WebGLContext WebGLProgram (Eff (canvas :: Canvas | eff) Unit)

validateProgram :: forall eff. WebGLContext -> WebGLProgram -> Eff (canvas :: Canvas | eff) Unit
validateProgram webgl program = runFn2 validateProgramImpl webgl program

foreign import vertexAttrib1fImpl :: forall eff. Fn3 WebGLContext GLuint GLfloat (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib1f :: forall eff. WebGLContext -> GLuint -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib1f webgl indx x = runFn3 vertexAttrib1fImpl webgl indx x

foreign import vertexAttrib1fvImpl :: forall eff. Fn3 WebGLContext GLuint (Array GLfloat) (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib1fv :: forall eff. WebGLContext -> GLuint -> (Array GLfloat) -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib1fv webgl indx values = runFn3 vertexAttrib1fvImpl webgl indx values

foreign import vertexAttrib1fv_Impl :: forall eff. Fn3 WebGLContext GLuint Float32Array (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib1fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib1fv_ webgl indx values = runFn3 vertexAttrib1fv_Impl webgl indx values

foreign import vertexAttrib2fImpl :: forall eff. Fn4 WebGLContext GLuint GLfloat GLfloat (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib2f :: forall eff. WebGLContext -> GLuint -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib2f webgl indx x y = runFn4 vertexAttrib2fImpl webgl indx x y

foreign import vertexAttrib2fvImpl :: forall eff. Fn3 WebGLContext GLuint (Array GLfloat) (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib2fv :: forall eff. WebGLContext -> GLuint -> (Array GLfloat) -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib2fv webgl indx values = runFn3 vertexAttrib2fvImpl webgl indx values

foreign import vertexAttrib2fv_Impl :: forall eff. Fn3 WebGLContext GLuint Float32Array (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib2fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib2fv_ webgl indx values = runFn3 vertexAttrib2fv_Impl webgl indx values

foreign import vertexAttrib3fImpl :: forall eff. Fn5 WebGLContext GLuint GLfloat GLfloat GLfloat (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib3f :: forall eff. WebGLContext -> GLuint -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib3f webgl indx x y z = runFn5 vertexAttrib3fImpl webgl indx x y z

foreign import vertexAttrib3fvImpl :: forall eff. Fn3 WebGLContext GLuint (Array GLfloat) (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib3fv :: forall eff. WebGLContext -> GLuint -> (Array GLfloat) -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib3fv webgl indx values = runFn3 vertexAttrib3fvImpl webgl indx values

foreign import vertexAttrib3fv_Impl :: forall eff. Fn3 WebGLContext GLuint Float32Array (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib3fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib3fv_ webgl indx values = runFn3 vertexAttrib3fv_Impl webgl indx values

foreign import vertexAttrib4fImpl :: forall eff. Fn6 WebGLContext GLuint GLfloat GLfloat GLfloat GLfloat (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib4f :: forall eff. WebGLContext -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib4f webgl indx x y z w = runFn6 vertexAttrib4fImpl webgl indx x y z w

foreign import vertexAttrib4fvImpl :: forall eff. Fn3 WebGLContext GLuint (Array GLfloat) (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib4fv :: forall eff. WebGLContext -> GLuint -> (Array GLfloat) -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib4fv webgl indx values = runFn3 vertexAttrib4fvImpl webgl indx values

foreign import vertexAttrib4fv_Impl :: forall eff. Fn3 WebGLContext GLuint Float32Array (Eff (canvas :: Canvas | eff) Unit)

vertexAttrib4fv_ :: forall eff. WebGLContext -> GLuint -> Float32Array -> Eff (canvas :: Canvas | eff) Unit
vertexAttrib4fv_ webgl indx values = runFn3 vertexAttrib4fv_Impl webgl indx values

foreign import vertexAttribPointerImpl :: forall eff. Fn7 WebGLContext GLuint GLint GLenum GLboolean GLsizei GLintptr (Eff (canvas :: Canvas | eff) Unit)

vertexAttribPointer :: forall eff. WebGLContext -> GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> GLintptr -> Eff (canvas :: Canvas | eff) Unit
vertexAttribPointer webgl indx size type' normalized stride offset = runFn7 vertexAttribPointerImpl webgl indx size type' normalized stride offset

foreign import viewportImpl :: forall eff. Fn5 WebGLContext GLint GLint GLsizei GLsizei (Eff (canvas :: Canvas | eff) Unit)

viewport :: forall eff. WebGLContext -> GLint -> GLint -> GLsizei -> GLsizei -> Eff (canvas :: Canvas | eff) Unit
viewport webgl x y width height = runFn5 viewportImpl webgl x y width height

