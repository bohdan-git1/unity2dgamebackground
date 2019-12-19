//
// Bending shader
//

varying vec2 v_vTexcoord;          
varying vec4 v_vColour;             


void main()
{
    vec2 coordinates;              
    float pixelDistanceX;          
    float pixelDistanceY;           
    float offset;                   
    float dir;                     
    
  pixelDistanceX = distance(v_vTexcoord.x, 0.5);   
  pixelDistanceY = distance(v_vTexcoord.y, 0.5);    
  
  offset = (pixelDistanceX*0.2) * pixelDistanceY;   
  
    if (v_vTexcoord.y <= 0.5)  
        dir = 1.0;                  
    else
        dir = -1.0;                
    
    
    coordinates = vec2(v_vTexcoord.x , v_vTexcoord.y + pixelDistanceX*(offset*3.0*dir));
    
   
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture, coordinates);
}
       
