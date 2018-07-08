Shader "Sourav/SurfaceShader"
{
	Properties
	{
		_color("Example Color", Color) = (1, 1, 1, 1)
		_emission("Example Emission", Color) = (1, 1, 1, 1)
	}
	
	SubShader
	{
		CGPROGRAM
		#pragma surface surf Lambert

		struct Input
		{
			float2 uvMainTex;
		};
		
		fixed4 _color;
		fixed4 _emission;

		void surf(Input IN, inout SurfaceOutput o)
		{
			o.Albedo = _color.rgb;
			o.Emission = _emission.rgb;
		}
		ENDCG
	}
	
	FallBack "Diffuse"
}