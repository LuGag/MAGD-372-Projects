Shader "USB/USB_simple_color"
	{
	Properties
		{
			// declare the properties
			_MainTex ("Texture", 2D) = "white" {}
			_Color ("Funny Texture Color", Color) = (1, 1, 1, 1)
		}
	SubShader
		{
			Pass
		{
			CGPROGRAM
			// add connection variables
			uniform sampler2D _Maintex;
			uniform float4 _MainTex_ST;
			uniform float4 _Color;

		half4 frag (v2f i) : SV_Target
		{
			half4 col = tex2D(_MainTex, i.uv);
			return col * _Color
			}
		ENDCG
		}
	}	
}