Shader "NoiseTest/GLSL/NoiseTest"
{
    Properties
    {
        [KeywordEnum(CNOISE, PNOISE, SNOISE, SNOISE_AGRAD, SNOISE_NGRAD)] _Type ("Type", Int) = 0
        [Toggle(THREED)] _Threed ("Threed", Int) = 0
        [Toggle(FRACTAL)] _Fractal ("Fractal", Int) = 0
    }

    SubShader
    {
        Pass
        {
            GLSLPROGRAM
            #pragma multi_compile _TYPE_CNOISE _TYPE_PNOISE _TYPE_SNOISE _TYPE_SNOISE_AGRAD _TYPE_SNOISE_NGRAD
            #pragma multi_compile _ THREED
            #pragma multi_compile _ FRACTAL
            #include "NoiseTest.glslinc"
            ENDGLSL
        }
    }
}
