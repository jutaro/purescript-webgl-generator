"use strict";

// module Graphics.WebGL.Raw

exports.activeTextureImpl = function (webgl, texture) {
  return function () {
    return webgl.activeTexture(texture);
  };
}

exports.attachShaderImpl = function (webgl, program, shader) {
  return function () {
    return webgl.attachShader(program, shader);
  };
}

exports.bindAttribLocationImpl = function (webgl, program, index, name) {
  return function () {
    return webgl.bindAttribLocation(program, index, name);
  };
}

exports.bindBufferImpl = function (webgl, target, buffer) {
  return function () {
    return webgl.bindBuffer(target, buffer);
  };
}

exports.bindFramebufferImpl = function (webgl, target, framebuffer) {
  return function () {
    return webgl.bindFramebuffer(target, framebuffer);
  };
}

exports.bindRenderbufferImpl = function (webgl, target, renderbuffer) {
  return function () {
    return webgl.bindRenderbuffer(target, renderbuffer);
  };
}

exports.bindTextureImpl = function (webgl, target, texture) {
  return function () {
    return webgl.bindTexture(target, texture);
  };
}

exports.blendColorImpl = function (webgl, red, green, blue, alpha) {
  return function () {
    return webgl.blendColor(red, green, blue, alpha);
  };
}

exports.blendEquationImpl = function (webgl, mode) {
  return function () {
    return webgl.blendEquation(mode);
  };
}

exports.blendEquationSeparateImpl = function (webgl, modeRGB, modeAlpha) {
  return function () {
    return webgl.blendEquationSeparate(modeRGB, modeAlpha);
  };
}

exports.blendFuncImpl = function (webgl, sfactor, dfactor) {
  return function () {
    return webgl.blendFunc(sfactor, dfactor);
  };
}

exports.blendFuncSeparateImpl = function (webgl, srcRGB, dstRGB, srcAlpha, dstAlpha) {
  return function () {
    return webgl.blendFuncSeparate(srcRGB, dstRGB, srcAlpha, dstAlpha);
  };
}

exports.bufferDataImpl = function (webgl, target, data, usage) {
  return function () {
    return webgl.bufferData(target, data, usage);
  };
}

exports.bufferData_Impl = function (webgl, target, size, usage) {
  return function () {
    return webgl.bufferData(target, size, usage);
  };
}

exports.bufferSubDataImpl = function (webgl, target, offset, data) {
  return function () {
    return webgl.bufferSubData(target, offset, data);
  };
}

exports.checkFramebufferStatusImpl = function (webgl, target) {
  return function () {
    return webgl.checkFramebufferStatus(target);
  };
}

exports.clearImpl = function (webgl, mask) {
  return function () {
    return webgl.clear(mask);
  };
}

exports.clearColorImpl = function (webgl, red, green, blue, alpha) {
  return function () {
    return webgl.clearColor(red, green, blue, alpha);
  };
}

exports.clearDepthImpl = function (webgl, depth) {
  return function () {
    return webgl.clearDepth(depth);
  };
}

exports.clearStencilImpl = function (webgl, s) {
  return function () {
    return webgl.clearStencil(s);
  };
}

exports.colorMaskImpl = function (webgl, red, green, blue, alpha) {
  return function () {
    return webgl.colorMask(red, green, blue, alpha);
  };
}

exports.compileShaderImpl = function (webgl, shader) {
  return function () {
    return webgl.compileShader(shader);
  };
}

exports.compressedTexImage2DImpl = function (webgl, target, level, internalformat, width, height, border, data) {
  return function () {
    return webgl.compressedTexImage2D(target, level, internalformat, width, height, border, data);
  };
}

exports.compressedTexSubImage2DImpl = function (webgl, target, level, xoffset, yoffset, width, height, format, data) {
  return function () {
    return webgl.compressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, data);
  };
}

exports.copyTexImage2DImpl = function (webgl, target, level, internalformat, x, y, width, height, border) {
  return function () {
    return webgl.copyTexImage2D(target, level, internalformat, x, y, width, height, border);
  };
}

exports.copyTexSubImage2DImpl = function (webgl, target, level, xoffset, yoffset, x, y, width, height) {
  return function () {
    return webgl.copyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
  };
}

exports.createBufferImpl = function (webgl) {
  return function () {
    return webgl.createBuffer();
  };
}

exports.createFramebufferImpl = function (webgl) {
  return function () {
    return webgl.createFramebuffer();
  };
}

exports.createProgramImpl = function (webgl) {
  return function () {
    return webgl.createProgram();
  };
}

exports.createRenderbufferImpl = function (webgl) {
  return function () {
    return webgl.createRenderbuffer();
  };
}

exports.createShaderImpl = function (webgl, type) {
  return function () {
    return webgl.createShader(type);
  };
}

exports.createTextureImpl = function (webgl) {
  return function () {
    return webgl.createTexture();
  };
}

exports.cullFaceImpl = function (webgl, mode) {
  return function () {
    return webgl.cullFace(mode);
  };
}

exports.deleteBufferImpl = function (webgl, buffer) {
  return function () {
    return webgl.deleteBuffer(buffer);
  };
}

exports.deleteFramebufferImpl = function (webgl, framebuffer) {
  return function () {
    return webgl.deleteFramebuffer(framebuffer);
  };
}

exports.deleteProgramImpl = function (webgl, program) {
  return function () {
    return webgl.deleteProgram(program);
  };
}

exports.deleteRenderbufferImpl = function (webgl, renderbuffer) {
  return function () {
    return webgl.deleteRenderbuffer(renderbuffer);
  };
}

exports.deleteShaderImpl = function (webgl, shader) {
  return function () {
    return webgl.deleteShader(shader);
  };
}

exports.deleteTextureImpl = function (webgl, texture) {
  return function () {
    return webgl.deleteTexture(texture);
  };
}

exports.depthFuncImpl = function (webgl, func) {
  return function () {
    return webgl.depthFunc(func);
  };
}

exports.depthMaskImpl = function (webgl, flag) {
  return function () {
    return webgl.depthMask(flag);
  };
}

exports.depthRangeImpl = function (webgl, zNear, zFar) {
  return function () {
    return webgl.depthRange(zNear, zFar);
  };
}

exports.detachShaderImpl = function (webgl, program, shader) {
  return function () {
    return webgl.detachShader(program, shader);
  };
}

exports.disableImpl = function (webgl, cap) {
  return function () {
    return webgl.disable(cap);
  };
}

exports.disableVertexAttribArrayImpl = function (webgl, index) {
  return function () {
    return webgl.disableVertexAttribArray(index);
  };
}

exports.drawArraysImpl = function (webgl, mode, first, count) {
  return function () {
    return webgl.drawArrays(mode, first, count);
  };
}

exports.drawElementsImpl = function (webgl, mode, count, type, offset) {
  return function () {
    return webgl.drawElements(mode, count, type, offset);
  };
}

exports.enableImpl = function (webgl, cap) {
  return function () {
    return webgl.enable(cap);
  };
}

exports.enableVertexAttribArrayImpl = function (webgl, index) {
  return function () {
    return webgl.enableVertexAttribArray(index);
  };
}

exports.finishImpl = function (webgl) {
  return function () {
    return webgl.finish();
  };
}

exports.flushImpl = function (webgl) {
  return function () {
    return webgl.flush();
  };
}

exports.framebufferRenderbufferImpl = function (webgl, target, attachment, renderbuffertarget, renderbuffer) {
  return function () {
    return webgl.framebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer);
  };
}

exports.framebufferTexture2DImpl = function (webgl, target, attachment, textarget, texture, level) {
  return function () {
    return webgl.framebufferTexture2D(target, attachment, textarget, texture, level);
  };
}

exports.frontFaceImpl = function (webgl, mode) {
  return function () {
    return webgl.frontFace(mode);
  };
}

exports.generateMipmapImpl = function (webgl, target) {
  return function () {
    return webgl.generateMipmap(target);
  };
}

exports.getActiveAttribImpl = function (webgl, program, index) {
  return function () {
    return webgl.getActiveAttrib(program, index);
  };
}

exports.getActiveUniformImpl = function (webgl, program, index) {
  return function () {
    return webgl.getActiveUniform(program, index);
  };
}

exports.getAttachedShadersImpl = function (webgl, program) {
  return function () {
    return webgl.getAttachedShaders(program);
  };
}

exports.getAttribLocationImpl = function (webgl, program, name) {
  return function () {
    return webgl.getAttribLocation(program, name);
  };
}

exports.getBufferParameterImpl = function (webgl, target, pname) {
  return function () {
    return webgl.getBufferParameter(target, pname);
  };
}

exports.getContextAttributesImpl = function (webgl) {
  return function () {
    return webgl.getContextAttributes();
  };
}

exports.getErrorImpl = function (webgl) {
  return function () {
    return webgl.getError();
  };
}

exports.getExtensionImpl = function (webgl, name) {
  return function () {
    return webgl.getExtension(name);
  };
}

exports.getFramebufferAttachmentParameterImpl = function (webgl, target, attachment, pname) {
  return function () {
    return webgl.getFramebufferAttachmentParameter(target, attachment, pname);
  };
}

exports.getParameterImpl = function (webgl, pname) {
  return function () {
    return webgl.getParameter(pname);
  };
}

exports.getProgramInfoLogImpl = function (webgl, program) {
  return function () {
    return webgl.getProgramInfoLog(program);
  };
}

exports.getProgramParameterImpl = function (webgl, program, pname) {
  return function () {
    return webgl.getProgramParameter(program, pname);
  };
}

exports.getRenderbufferParameterImpl = function (webgl, target, pname) {
  return function () {
    return webgl.getRenderbufferParameter(target, pname);
  };
}

exports.getShaderInfoLogImpl = function (webgl, shader) {
  return function () {
    return webgl.getShaderInfoLog(shader);
  };
}

exports.getShaderParameterImpl = function (webgl, shader, pname) {
  return function () {
    return webgl.getShaderParameter(shader, pname);
  };
}

exports.getShaderPrecisionFormatImpl = function (webgl, shadertype, precisiontype) {
  return function () {
    return webgl.getShaderPrecisionFormat(shadertype, precisiontype);
  };
}

exports.getShaderSourceImpl = function (webgl, shader) {
  return function () {
    return webgl.getShaderSource(shader);
  };
}

exports.getSupportedExtensionsImpl = function (webgl) {
  return function () {
    return webgl.getSupportedExtensions();
  };
}

exports.getTexParameterImpl = function (webgl, target, pname) {
  return function () {
    return webgl.getTexParameter(target, pname);
  };
}

exports.getUniformImpl = function (webgl, program, location) {
  return function () {
    return webgl.getUniform(program, location);
  };
}

exports.getUniformLocationImpl = function (webgl, program, name) {
  return function () {
    return webgl.getUniformLocation(program, name);
  };
}

exports.getVertexAttribImpl = function (webgl, index, pname) {
  return function () {
    return webgl.getVertexAttrib(index, pname);
  };
}

exports.getVertexAttribOffsetImpl = function (webgl, index, pname) {
  return function () {
    return webgl.getVertexAttribOffset(index, pname);
  };
}

exports.hintImpl = function (webgl, target, mode) {
  return function () {
    return webgl.hint(target, mode);
  };
}

exports.isBufferImpl = function (webgl, buffer) {
  return function () {
    return webgl.isBuffer(buffer);
  };
}

exports.isContextLostImpl = function (webgl) {
  return function () {
    return webgl.isContextLost();
  };
}

exports.isEnabledImpl = function (webgl, cap) {
  return function () {
    return webgl.isEnabled(cap);
  };
}

exports.isFramebufferImpl = function (webgl, framebuffer) {
  return function () {
    return webgl.isFramebuffer(framebuffer);
  };
}

exports.isProgramImpl = function (webgl, program) {
  return function () {
    return webgl.isProgram(program);
  };
}

exports.isRenderbufferImpl = function (webgl, renderbuffer) {
  return function () {
    return webgl.isRenderbuffer(renderbuffer);
  };
}

exports.isShaderImpl = function (webgl, shader) {
  return function () {
    return webgl.isShader(shader);
  };
}

exports.isTextureImpl = function (webgl, texture) {
  return function () {
    return webgl.isTexture(texture);
  };
}

exports.lineWidthImpl = function (webgl, width) {
  return function () {
    return webgl.lineWidth(width);
  };
}

exports.linkProgramImpl = function (webgl, program) {
  return function () {
    return webgl.linkProgram(program);
  };
}

exports.pixelStoreiImpl = function (webgl, pname, param) {
  return function () {
    return webgl.pixelStorei(pname, param);
  };
}

exports.polygonOffsetImpl = function (webgl, factor, units) {
  return function () {
    return webgl.polygonOffset(factor, units);
  };
}

exports.readPixelsImpl = function (webgl, x, y, width, height, format, type, pixels) {
  return function () {
    return webgl.readPixels(x, y, width, height, format, type, pixels);
  };
}

exports.renderbufferStorageImpl = function (webgl, target, internalformat, width, height) {
  return function () {
    return webgl.renderbufferStorage(target, internalformat, width, height);
  };
}

exports.sampleCoverageImpl = function (webgl, value, invert) {
  return function () {
    return webgl.sampleCoverage(value, invert);
  };
}

exports.scissorImpl = function (webgl, x, y, width, height) {
  return function () {
    return webgl.scissor(x, y, width, height);
  };
}

exports.shaderSourceImpl = function (webgl, shader, source) {
  return function () {
    return webgl.shaderSource(shader, source);
  };
}

exports.stencilFuncImpl = function (webgl, func, ref, mask) {
  return function () {
    return webgl.stencilFunc(func, ref, mask);
  };
}

exports.stencilFuncSeparateImpl = function (webgl, face, func, ref, mask) {
  return function () {
    return webgl.stencilFuncSeparate(face, func, ref, mask);
  };
}

exports.stencilMaskImpl = function (webgl, mask) {
  return function () {
    return webgl.stencilMask(mask);
  };
}

exports.stencilMaskSeparateImpl = function (webgl, face, mask) {
  return function () {
    return webgl.stencilMaskSeparate(face, mask);
  };
}

exports.stencilOpImpl = function (webgl, fail, zfail, zpass) {
  return function () {
    return webgl.stencilOp(fail, zfail, zpass);
  };
}

exports.stencilOpSeparateImpl = function (webgl, face, fail, zfail, zpass) {
  return function () {
    return webgl.stencilOpSeparate(face, fail, zfail, zpass);
  };
}

exports.texImage2DImpl = function (webgl, target, level, internalformat, format, type, source) {
  return function () {
    return webgl.texImage2D(target, level, internalformat, format, type, source);
  };
}

exports.texImage2D_Impl = function (webgl, target, level, internalformat, width, height, border, format, type, pixels) {
  return function () {
    return webgl.texImage2D(target, level, internalformat, width, height, border, format, type, pixels);
  };
}

exports.texParameterfImpl = function (webgl, target, pname, param) {
  return function () {
    return webgl.texParameterf(target, pname, param);
  };
}

exports.texParameteriImpl = function (webgl, target, pname, param) {
  return function () {
    return webgl.texParameteri(target, pname, param);
  };
}

exports.texSubImage2DImpl = function (webgl, target, level, xoffset, yoffset, format, type, source) {
  return function () {
    return webgl.texSubImage2D(target, level, xoffset, yoffset, format, type, source);
  };
}

exports.texSubImage2D_Impl = function (webgl, target, level, xoffset, yoffset, width, height, format, type, pixels) {
  return function () {
    return webgl.texSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
  };
}

exports.uniform1fImpl = function (webgl, location, x) {
  return function () {
    return webgl.uniform1f(location, x);
  };
}

exports.uniform1fvImpl = function (webgl, location, v) {
  return function () {
    return webgl.uniform1fv(location, v);
  };
}

exports.uniform1fv_Impl = function (webgl, location, v) {
  return function () {
    return webgl.uniform1fv(location, v);
  };
}

exports.uniform1iImpl = function (webgl, location, x) {
  return function () {
    return webgl.uniform1i(location, x);
  };
}

exports.uniform1ivImpl = function (webgl, location, v) {
  return function () {
    return webgl.uniform1iv(location, v);
  };
}

exports.uniform1iv_Impl = function (webgl, location, v) {
  return function () {
    return webgl.uniform1iv(location, v);
  };
}

exports.uniform2fImpl = function (webgl, location, x, y) {
  return function () {
    return webgl.uniform2f(location, x, y);
  };
}

exports.uniform2fvImpl = function (webgl, location, v) {
  return function () {
    return webgl.uniform2fv(location, v);
  };
}

exports.uniform2fv_Impl = function (webgl, location, v) {
  return function () {
    return webgl.uniform2fv(location, v);
  };
}

exports.uniform2iImpl = function (webgl, location, x, y) {
  return function () {
    return webgl.uniform2i(location, x, y);
  };
}

exports.uniform2ivImpl = function (webgl, location, v) {
  return function () {
    return webgl.uniform2iv(location, v);
  };
}

exports.uniform2iv_Impl = function (webgl, location, v) {
  return function () {
    return webgl.uniform2iv(location, v);
  };
}

exports.uniform3fImpl = function (webgl, location, x, y, z) {
  return function () {
    return webgl.uniform3f(location, x, y, z);
  };
}

exports.uniform3fvImpl = function (webgl, location, v) {
  return function () {
    return webgl.uniform3fv(location, v);
  };
}

exports.uniform3fv_Impl = function (webgl, location, v) {
  return function () {
    return webgl.uniform3fv(location, v);
  };
}

exports.uniform3iImpl = function (webgl, location, x, y, z) {
  return function () {
    return webgl.uniform3i(location, x, y, z);
  };
}

exports.uniform3ivImpl = function (webgl, location, v) {
  return function () {
    return webgl.uniform3iv(location, v);
  };
}

exports.uniform3iv_Impl = function (webgl, location, v) {
  return function () {
    return webgl.uniform3iv(location, v);
  };
}

exports.uniform4fImpl = function (webgl, location, x, y, z, w) {
  return function () {
    return webgl.uniform4f(location, x, y, z, w);
  };
}

exports.uniform4fvImpl = function (webgl, location, v) {
  return function () {
    return webgl.uniform4fv(location, v);
  };
}

exports.uniform4fv_Impl = function (webgl, location, v) {
  return function () {
    return webgl.uniform4fv(location, v);
  };
}

exports.uniform4iImpl = function (webgl, location, x, y, z, w) {
  return function () {
    return webgl.uniform4i(location, x, y, z, w);
  };
}

exports.uniform4ivImpl = function (webgl, location, v) {
  return function () {
    return webgl.uniform4iv(location, v);
  };
}

exports.uniform4iv_Impl = function (webgl, location, v) {
  return function () {
    return webgl.uniform4iv(location, v);
  };
}

exports.uniformMatrix2fvImpl = function (webgl, location, transpose, value) {
  return function () {
    return webgl.uniformMatrix2fv(location, transpose, value);
  };
}

exports.uniformMatrix2fv_Impl = function (webgl, location, transpose, value) {
  return function () {
    return webgl.uniformMatrix2fv(location, transpose, value);
  };
}

exports.uniformMatrix3fvImpl = function (webgl, location, transpose, value) {
  return function () {
    return webgl.uniformMatrix3fv(location, transpose, value);
  };
}

exports.uniformMatrix3fv_Impl = function (webgl, location, transpose, value) {
  return function () {
    return webgl.uniformMatrix3fv(location, transpose, value);
  };
}

exports.uniformMatrix4fvImpl = function (webgl, location, transpose, value) {
  return function () {
    return webgl.uniformMatrix4fv(location, transpose, value);
  };
}

exports.uniformMatrix4fv_Impl = function (webgl, location, transpose, value) {
  return function () {
    return webgl.uniformMatrix4fv(location, transpose, value);
  };
}

exports.useProgramImpl = function (webgl, program) {
  return function () {
    return webgl.useProgram(program);
  };
}

exports.validateProgramImpl = function (webgl, program) {
  return function () {
    return webgl.validateProgram(program);
  };
}

exports.vertexAttrib1fImpl = function (webgl, indx, x) {
  return function () {
    return webgl.vertexAttrib1f(indx, x);
  };
}

exports.vertexAttrib1fvImpl = function (webgl, indx, values) {
  return function () {
    return webgl.vertexAttrib1fv(indx, values);
  };
}

exports.vertexAttrib1fv_Impl = function (webgl, indx, values) {
  return function () {
    return webgl.vertexAttrib1fv(indx, values);
  };
}

exports.vertexAttrib2fImpl = function (webgl, indx, x, y) {
  return function () {
    return webgl.vertexAttrib2f(indx, x, y);
  };
}

exports.vertexAttrib2fvImpl = function (webgl, indx, values) {
  return function () {
    return webgl.vertexAttrib2fv(indx, values);
  };
}

exports.vertexAttrib2fv_Impl = function (webgl, indx, values) {
  return function () {
    return webgl.vertexAttrib2fv(indx, values);
  };
}

exports.vertexAttrib3fImpl = function (webgl, indx, x, y, z) {
  return function () {
    return webgl.vertexAttrib3f(indx, x, y, z);
  };
}

exports.vertexAttrib3fvImpl = function (webgl, indx, values) {
  return function () {
    return webgl.vertexAttrib3fv(indx, values);
  };
}

exports.vertexAttrib3fv_Impl = function (webgl, indx, values) {
  return function () {
    return webgl.vertexAttrib3fv(indx, values);
  };
}

exports.vertexAttrib4fImpl = function (webgl, indx, x, y, z, w) {
  return function () {
    return webgl.vertexAttrib4f(indx, x, y, z, w);
  };
}

exports.vertexAttrib4fvImpl = function (webgl, indx, values) {
  return function () {
    return webgl.vertexAttrib4fv(indx, values);
  };
}

exports.vertexAttrib4fv_Impl = function (webgl, indx, values) {
  return function () {
    return webgl.vertexAttrib4fv(indx, values);
  };
}

exports.vertexAttribPointerImpl = function (webgl, indx, size, type, normalized, stride, offset) {
  return function () {
    return webgl.vertexAttribPointer(indx, size, type, normalized, stride, offset);
  };
}

exports.viewportImpl = function (webgl, x, y, width, height) {
  return function () {
    return webgl.viewport(x, y, width, height);
  };
}

