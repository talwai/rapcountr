
COMMENT ON FUNCTION AddRasterConstraints(name , name , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean ) IS 'args: rasttable, rastcolumn, srid, scale_x, scale_y, blocksize_x, blocksize_y, same_alignment, regular_blocking, num_bands=true, pixel_types=true, nodata_values=true, out_db=true, extent=true - Adds raster constraints to a loaded raster table for a specific column that constrains spatial ref, scaling, blocksize, alignment, bands, band type and a flag to denote if raster column is regularly blocked. The table must be loaded with data for the constraints to be inferred. Returns true of the constraint setting was accomplished and if issues a notice.';
			
COMMENT ON FUNCTION AddRasterConstraints(name , name , text[] ) IS 'args: rasttable, rastcolumn, VARIADIC constraints - Adds raster constraints to a loaded raster table for a specific column that constrains spatial ref, scaling, blocksize, alignment, bands, band type and a flag to denote if raster column is regularly blocked. The table must be loaded with data for the constraints to be inferred. Returns true of the constraint setting was accomplished and if issues a notice.';
			
COMMENT ON FUNCTION AddRasterConstraints(name , name , name , text[] ) IS 'args: rastschema, rasttable, rastcolumn, VARIADIC constraints - Adds raster constraints to a loaded raster table for a specific column that constrains spatial ref, scaling, blocksize, alignment, bands, band type and a flag to denote if raster column is regularly blocked. The table must be loaded with data for the constraints to be inferred. Returns true of the constraint setting was accomplished and if issues a notice.';
			
COMMENT ON FUNCTION AddRasterConstraints(name , name , name , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean ) IS 'args: rastschema, rasttable, rastcolumn, srid=true, scale_x=true, scale_y=true, blocksize_x=true, blocksize_y=true, same_alignment=true, regular_blocking=true, num_bands=true, pixel_types=true, nodata_values=true, out_db=true, extent=true - Adds raster constraints to a loaded raster table for a specific column that constrains spatial ref, scaling, blocksize, alignment, bands, band type and a flag to denote if raster column is regularly blocked. The table must be loaded with data for the constraints to be inferred. Returns true of the constraint setting was accomplished and if issues a notice.';
			
COMMENT ON FUNCTION DropRasterConstraints(name , name , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean ) IS 'args: rasttable, rastcolumn, srid, scale_x, scale_y, blocksize_x, blocksize_y, same_alignment, regular_blocking, num_bands=true, pixel_types=true, nodata_values=true, out_db=true, extent=true - Drops PostGIS raster constraints that refer to a raster table column. Useful if you need to reload data or update your raster column data.';
			
COMMENT ON FUNCTION DropRasterConstraints(name , name , name , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean , boolean ) IS 'args: rastschema, rasttable, rastcolumn, srid=true, scale_x=true, scale_y=true, blocksize_x=true, blocksize_y=true, same_alignment=true, regular_blocking=true, num_bands=true, pixel_types=true, nodata_values=true, out_db=true, extent=true - Drops PostGIS raster constraints that refer to a raster table column. Useful if you need to reload data or update your raster column data.';
			
COMMENT ON FUNCTION DropRasterConstraints(name , name , name , text[] ) IS 'args: rastschema, rasttable, rastcolumn, constraints - Drops PostGIS raster constraints that refer to a raster table column. Useful if you need to reload data or update your raster column data.';
			
COMMENT ON FUNCTION PostGIS_Raster_Lib_Build_Date() IS 'Reports full raster library build date.';
			
COMMENT ON FUNCTION PostGIS_Raster_Lib_Version() IS 'Reports full raster version and build configuration infos.';
			
COMMENT ON FUNCTION ST_GDALDrivers() IS 'args: OUT idx, OUT short_name, OUT long_name, OUT create_options - Returns a list of raster formats supported by your lib gdal. These are the formats you can output your raster using ST_AsGDALRaster.';
			
COMMENT ON FUNCTION ST_AddBand(raster , text , double precision , double precision ) IS 'args: rast, pixeltype, initialvalue=0, nodataval=NULL - Returns a raster with the new band(s) of given type added with given initial value in the given index location. If no index is specified, the band is added to the end.';
			
COMMENT ON FUNCTION ST_AddBand(raster , integer , text , double precision , double precision ) IS 'args: rast, index, pixeltype, initialvalue=0, nodataval=NULL - Returns a raster with the new band(s) of given type added with given initial value in the given index location. If no index is specified, the band is added to the end.';
			
COMMENT ON FUNCTION ST_AddBand(raster , raster , integer , integer ) IS 'args: torast, fromrast, fromband=1, torastindex=at_end - Returns a raster with the new band(s) of given type added with given initial value in the given index location. If no index is specified, the band is added to the end.';
			
COMMENT ON FUNCTION ST_AddBand(raster , raster[] , integer ) IS 'args: torast, fromrasts, fromband=1 - Returns a raster with the new band(s) of given type added with given initial value in the given index location. If no index is specified, the band is added to the end.';
			
COMMENT ON FUNCTION ST_AsRaster(geometry , raster , text , double precision , double precision , boolean ) IS 'args: geom, ref, pixeltype, value=1, nodataval=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';
			
COMMENT ON FUNCTION ST_AsRaster(geometry , raster , text[] , double precision[] , double precision[] , boolean ) IS 'args: geom, ref, pixeltype=ARRAY[''8BUI''], value=ARRAY[1], nodataval=ARRAY[0], touched=false - Converts a PostGIS geometry to a PostGIS raster.';
			
COMMENT ON FUNCTION ST_AsRaster(geometry , double precision , double precision , double precision , double precision , text , double precision , double precision , double precision , double precision , boolean ) IS 'args: geom, scalex, scaley, gridx, gridy, pixeltype, value=1, nodataval=0, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';
			
COMMENT ON FUNCTION ST_AsRaster(geometry , double precision , double precision , double precision , double precision , text[] , double precision[] , double precision[] , double precision , double precision , boolean ) IS 'args: geom, scalex, scaley, gridx=NULL, gridy=NULL, pixeltype=ARRAY[''8BUI''], value=ARRAY[1], nodataval=ARRAY[0], skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';
			
COMMENT ON FUNCTION ST_AsRaster(geometry , double precision , double precision , text , double precision , double precision , double precision , double precision , double precision , double precision , boolean ) IS 'args: geom, scalex, scaley, pixeltype, value=1, nodataval=0, upperleftx=NULL, upperlefty=NULL, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';
			
COMMENT ON FUNCTION ST_AsRaster(geometry , double precision , double precision , text[] , double precision[] , double precision[] , double precision , double precision , double precision , double precision , boolean ) IS 'args: geom, scalex, scaley, pixeltype, value=ARRAY[1], nodataval=ARRAY[0], upperleftx=NULL, upperlefty=NULL, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';
			
COMMENT ON FUNCTION ST_AsRaster(geometry , integer , integer , double precision , double precision , text , double precision , double precision , double precision , double precision , boolean ) IS 'args: geom, width, height, gridx, gridy, pixeltype, value=1, nodataval=0, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';
			
COMMENT ON FUNCTION ST_AsRaster(geometry , integer , integer , double precision , double precision , text[] , double precision[] , double precision[] , double precision , double precision , boolean ) IS 'args: geom, width, height, gridx=NULL, gridy=NULL, pixeltype=ARRAY[''8BUI''], value=ARRAY[1], nodataval=ARRAY[0], skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';
			
COMMENT ON FUNCTION ST_AsRaster(geometry , integer , integer , text , double precision , double precision , double precision , double precision , double precision , double precision , boolean ) IS 'args: geom, width, height, pixeltype, value=1, nodataval=0, upperleftx=NULL, upperlefty=NULL, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';
			
COMMENT ON FUNCTION ST_AsRaster(geometry , integer , integer , text[] , double precision[] , double precision[] , double precision , double precision , double precision , double precision , boolean ) IS 'args: geom, width, height, pixeltype, value=ARRAY[1], nodataval=ARRAY[0], upperleftx=NULL, upperlefty=NULL, skewx=0, skewy=0, touched=false - Converts a PostGIS geometry to a PostGIS raster.';
			
COMMENT ON FUNCTION ST_Band(raster , integer[] ) IS 'args: rast, nbands = ARRAY[1] - Returns one or more bands of an existing raster as a new raster. Useful for building new rasters from existing rasters.';
			
COMMENT ON FUNCTION ST_Band(raster , text , character ) IS 'args: rast, nbands, delimiter=, - Returns one or more bands of an existing raster as a new raster. Useful for building new rasters from existing rasters.';
			
COMMENT ON FUNCTION ST_Band(raster , integer ) IS 'args: rast, nband - Returns one or more bands of an existing raster as a new raster. Useful for building new rasters from existing rasters.';
			
COMMENT ON FUNCTION ST_MakeEmptyRaster(raster ) IS 'args: rast - Returns an empty raster (having no bands) of given dimensions (width & height), upperleft X and Y, pixel size and rotation (scalex, scaley, skewx & skewy) and reference system (srid). If a raster is passed in, returns a new raster with the same size, alignment and SRID. If srid is left out, the spatial ref is set to unknown (0).';
			
COMMENT ON FUNCTION ST_MakeEmptyRaster(integer , integer , float8 , float8 , float8 , float8 , float8 , float8 , integer ) IS 'args: width, height, upperleftx, upperlefty, scalex, scaley, skewx, skewy, srid=unknown - Returns an empty raster (having no bands) of given dimensions (width & height), upperleft X and Y, pixel size and rotation (scalex, scaley, skewx & skewy) and reference system (srid). If a raster is passed in, returns a new raster with the same size, alignment and SRID. If srid is left out, the spatial ref is set to unknown (0).';
			
COMMENT ON FUNCTION ST_MakeEmptyRaster(integer , integer , float8  , float8  , float8  ) IS 'args: width, height, upperleftx, upperlefty, pixelsize - Returns an empty raster (having no bands) of given dimensions (width & height), upperleft X and Y, pixel size and rotation (scalex, scaley, skewx & skewy) and reference system (srid). If a raster is passed in, returns a new raster with the same size, alignment and SRID. If srid is left out, the spatial ref is set to unknown (0).';
			
COMMENT ON FUNCTION ST_GeoReference(raster , text ) IS 'args: rast, format=GDAL - Returns the georeference meta data in GDAL or ESRI format as commonly seen in a world file. Default is GDAL.';
			
COMMENT ON FUNCTION ST_Height(raster ) IS 'args: rast - Returns the height of the raster in pixels.';
			
COMMENT ON FUNCTION ST_MetaData(raster ) IS 'args: rast - Returns basic meta data about a raster object such as pixel size, rotation (skew), upper, lower left, etc.';
			
COMMENT ON FUNCTION ST_NumBands(raster ) IS 'args: rast - Returns the number of bands in the raster object.';
			
COMMENT ON FUNCTION ST_PixelHeight(raster ) IS 'args: rast - Returns the pixel height in geometric units of the spatial reference system.';
			
COMMENT ON FUNCTION ST_PixelWidth(raster ) IS 'args: rast - Returns the pixel width in geometric units of the spatial reference system.';
			
COMMENT ON FUNCTION ST_ScaleX(raster ) IS 'args: rast - Returns the X component of the pixel width in units of coordinate reference system.';
			
COMMENT ON FUNCTION ST_ScaleY(raster ) IS 'args: rast - Returns the Y component of the pixel height in units of coordinate reference system.';
			
COMMENT ON FUNCTION ST_Raster2WorldCoordX(raster , integer ) IS 'args: rast, xcolumn - Returns the geometric X coordinate upper left of a raster, column and row. Numbering of columns and rows starts at 1.';
			
COMMENT ON FUNCTION ST_Raster2WorldCoordX(raster , integer , integer ) IS 'args: rast, xcolumn, yrow - Returns the geometric X coordinate upper left of a raster, column and row. Numbering of columns and rows starts at 1.';
			
COMMENT ON FUNCTION ST_Raster2WorldCoordY(raster , integer ) IS 'args: rast, yrow - Returns the geometric Y coordinate upper left corner of a raster, column and row. Numbering of columns and rows starts at 1.';
			
COMMENT ON FUNCTION ST_Raster2WorldCoordY(raster , integer , integer ) IS 'args: rast, xcolumn, yrow - Returns the geometric Y coordinate upper left corner of a raster, column and row. Numbering of columns and rows starts at 1.';
			
COMMENT ON FUNCTION ST_Rotation(raster) IS 'args: rast - Returns the rotation of the raster in radian.';
			
COMMENT ON FUNCTION ST_SkewX(raster ) IS 'args: rast - Returns the georeference X skew (or rotation parameter).';
			
COMMENT ON FUNCTION ST_SkewY(raster ) IS 'args: rast - Returns the georeference Y skew (or rotation parameter).';
			
COMMENT ON FUNCTION ST_SRID(raster ) IS 'args: rast - Returns the spatial reference identifier of the raster as defined in spatial_ref_sys table.';
			
COMMENT ON FUNCTION ST_UpperLeftX(raster ) IS 'args: rast - Returns the upper left X coordinate of raster in projected spatial ref.';
			
COMMENT ON FUNCTION ST_UpperLeftY(raster ) IS 'args: rast - Returns the upper left Y coordinate of raster in projected spatial ref.';
			
COMMENT ON FUNCTION ST_Width(raster ) IS 'args: rast - Returns the width of the raster in pixels.';
			
COMMENT ON FUNCTION ST_World2RasterCoordX(raster , geometry ) IS 'args: rast, pt - Returns the column in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';
			
COMMENT ON FUNCTION ST_World2RasterCoordX(raster , double precision ) IS 'args: rast, xw - Returns the column in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';
			
COMMENT ON FUNCTION ST_World2RasterCoordX(raster , double precision , double precision ) IS 'args: rast, xw, yw - Returns the column in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';
			
COMMENT ON FUNCTION ST_World2RasterCoordY(raster , geometry ) IS 'args: rast, pt - Returns the row in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';
			
COMMENT ON FUNCTION ST_World2RasterCoordY(raster , double precision ) IS 'args: rast, xw - Returns the row in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';
			
COMMENT ON FUNCTION ST_World2RasterCoordY(raster , double precision , double precision ) IS 'args: rast, xw, yw - Returns the row in the raster of the point geometry (pt) or a X and Y world coordinate (xw, yw) represented in world spatial reference system of raster.';
			
COMMENT ON FUNCTION ST_IsEmpty(raster ) IS 'args: rast - Returns true if the raster is empty (width = 0 and height = 0). Otherwise, returns false.';
			
COMMENT ON FUNCTION ST_BandMetaData(raster , integer ) IS 'args: rast, bandnum=1 - Returns basic meta data for a specific raster band. band num 1 is assumed if none-specified.';
			
COMMENT ON FUNCTION ST_BandNoDataValue(raster , integer ) IS 'args: rast, bandnum=1 - Returns the value in a given band that represents no data. If no band num 1 is assumed.';
			
COMMENT ON FUNCTION ST_BandIsNoData(raster , integer , boolean ) IS 'args: rast, band, forceChecking=true - Returns true if the band is filled with only nodata values.';
			
COMMENT ON FUNCTION ST_BandIsNoData(raster , boolean ) IS 'args: rast, forceChecking=true - Returns true if the band is filled with only nodata values.';
			
COMMENT ON FUNCTION ST_BandPath(raster , integer ) IS 'args: rast, bandnum=1 - Returns system file path to a band stored in file system. If no bandnum specified, 1 is assumed.';
			
COMMENT ON FUNCTION ST_BandPixelType(raster , integer ) IS 'args: rast, bandnum=1 - Returns the type of pixel for given band. If no bandnum specified, 1 is assumed.';
			
COMMENT ON FUNCTION ST_HasNoBand(raster , integer ) IS 'args: rast, bandnum=1 - Returns true if there is no band with given band number. If no band number is specified, then band number 1 is assumed.';
			
COMMENT ON FUNCTION ST_PixelAsPolygon(raster , integer , integer ) IS 'args: rast, columnx, rowy - Returns the geometry that bounds the pixel for a particular row and column.';
			
COMMENT ON FUNCTION ST_PixelAsPolygons(raster , integer ) IS 'args: rast, band=1 - Returns the geometry that bounds every pixel of a raster band along with the value, the X and the Y raster coordinates of each pixel.';
			
COMMENT ON FUNCTION ST_Value(raster , geometry , boolean ) IS 'args: rast, pt, exclude_nodata_value=true - Returns the value of a given band in a given columnx, rowy pixel or at a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified. If exclude_nodata_value is set to false, then all pixels include nodata pixels are considered to intersect and return value. If exclude_nodata_value is not passed in then reads it from metadata of raster.';
			
COMMENT ON FUNCTION ST_Value(raster , integer , geometry , boolean ) IS 'args: rast, bandnum, pt, exclude_nodata_value=true - Returns the value of a given band in a given columnx, rowy pixel or at a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified. If exclude_nodata_value is set to false, then all pixels include nodata pixels are considered to intersect and return value. If exclude_nodata_value is not passed in then reads it from metadata of raster.';
			
COMMENT ON FUNCTION ST_Value(raster , integer , integer , boolean ) IS 'args: rast, columnx, rowy, exclude_nodata_value=true - Returns the value of a given band in a given columnx, rowy pixel or at a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified. If exclude_nodata_value is set to false, then all pixels include nodata pixels are considered to intersect and return value. If exclude_nodata_value is not passed in then reads it from metadata of raster.';
			
COMMENT ON FUNCTION ST_Value(raster , integer , integer , integer , boolean ) IS 'args: rast, bandnum, columnx, rowy, exclude_nodata_value=true - Returns the value of a given band in a given columnx, rowy pixel or at a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified. If exclude_nodata_value is set to false, then all pixels include nodata pixels are considered to intersect and return value. If exclude_nodata_value is not passed in then reads it from metadata of raster.';
			
COMMENT ON FUNCTION ST_SetValue(raster , geometry , double precision ) IS 'args: rast, pt, newvalue - Returns modified raster resulting from setting the value of a given band in a given columnx, rowy pixel or at a pixel that intersects a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified.';
			
COMMENT ON FUNCTION ST_SetValue(raster , integer , geometry , double precision ) IS 'args: rast, bandnum, pt, newvalue - Returns modified raster resulting from setting the value of a given band in a given columnx, rowy pixel or at a pixel that intersects a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified.';
			
COMMENT ON FUNCTION ST_SetValue(raster , integer , integer , double precision ) IS 'args: rast, columnx, rowy, newvalue - Returns modified raster resulting from setting the value of a given band in a given columnx, rowy pixel or at a pixel that intersects a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified.';
			
COMMENT ON FUNCTION ST_SetValue(raster , integer , integer , integer , double precision ) IS 'args: rast, bandnum, columnx, rowy, newvalue - Returns modified raster resulting from setting the value of a given band in a given columnx, rowy pixel or at a pixel that intersects a particular geometric point. Band numbers start at 1 and assumed to be 1 if not specified.';
			
COMMENT ON FUNCTION ST_SetGeoReference(raster , text , text ) IS 'args: rast, georefcoords, format=GDAL - Set Georeference 6 georeference parameters in a single call. Numbers should be separated by white space. Accepts inputs in GDAL or ESRI format. Default is GDAL.';
			
COMMENT ON FUNCTION ST_SetRotation(raster, float8) IS 'args: rast, rotation - Set the rotation of the raster in radian.';
			
COMMENT ON FUNCTION ST_SetScale(raster , float8 ) IS 'args: rast, xy - Sets the X and Y size of pixels in units of coordinate reference system. Number units/pixel width/height.';
			
COMMENT ON FUNCTION ST_SetScale(raster , float8 , float8 ) IS 'args: rast, x, y - Sets the X and Y size of pixels in units of coordinate reference system. Number units/pixel width/height.';
			
COMMENT ON FUNCTION ST_SetSkew(raster , float8 ) IS 'args: rast, skewxy - Sets the georeference X and Y skew (or rotation parameter). If only one is passed in, sets X and Y to the same value.';
			
COMMENT ON FUNCTION ST_SetSkew(raster , float8 , float8 ) IS 'args: rast, skewx, skewy - Sets the georeference X and Y skew (or rotation parameter). If only one is passed in, sets X and Y to the same value.';
			
COMMENT ON FUNCTION ST_SetSRID(raster , integer ) IS 'args: rast, srid - Sets the SRID of a raster to a particular integer srid defined in the spatial_ref_sys table.';
			
COMMENT ON FUNCTION ST_SetUpperLeft(raster , double precision , double precision ) IS 'args: rast, x, y - Sets the value of the upper left corner of the pixel to projected X and Y coordinates.';
			
COMMENT ON FUNCTION ST_Resample(raster , integer , integer , integer , double precision , double precision , double precision , double precision , text , double precision ) IS 'args: rast, width, height, srid=same_as_rast, gridx=NULL, gridy=NULL, skewx=0, skewy=0, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster using a specified resampling algorithm, new dimensions, an arbitrary grid corner and a set of raster georeferencing attributes defined or borrowed from another raster. New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';
			
COMMENT ON FUNCTION ST_Resample(raster , integer , double precision , double precision , double precision , double precision , double precision , double precision , text , double precision ) IS 'args: rast, srid=NULL, scalex=0, scaley=0, gridx=NULL, gridy=NULL, skewx=0, skewy=0, algorithm=NearestNeighbor, maxerr=0.125 - Resample a raster using a specified resampling algorithm, new dimensions, an arbitrary grid corner and a set of raster georeferencing attributes defined or borrowed from another raster. New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';
			
COMMENT ON FUNCTION ST_Resample(raster , raster , text , double precision , boolean ) IS 'args: rast, ref, algorithm=NearestNeighbour, maxerr=0.125, usescale=true - Resample a raster using a specified resampling algorithm, new dimensions, an arbitrary grid corner and a set of raster georeferencing attributes defined or borrowed from another raster. New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';
			
COMMENT ON FUNCTION ST_Resample(raster , raster , boolean , text , double precision ) IS 'args: rast, ref, usescale, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster using a specified resampling algorithm, new dimensions, an arbitrary grid corner and a set of raster georeferencing attributes defined or borrowed from another raster. New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';
			
COMMENT ON FUNCTION ST_Rescale(raster , double precision , text , double precision ) IS 'args: rast, scalexy, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by adjusting only its scale (or pixel size). New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';
			
COMMENT ON FUNCTION ST_Rescale(raster , double precision , double precision , text , double precision ) IS 'args: rast, scalex, scaley, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by adjusting only its scale (or pixel size). New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';
			
COMMENT ON FUNCTION ST_Reskew(raster , double precision , text , double precision ) IS 'args: rast, skewxy, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by adjusting only its skew (or rotation parameters). New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';
			
COMMENT ON FUNCTION ST_Reskew(raster , double precision , double precision , text , double precision ) IS 'args: rast, skewx, skewy, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by adjusting only its skew (or rotation parameters). New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';
			
COMMENT ON FUNCTION ST_SnapToGrid(raster , double precision , double precision , text , double precision , double precision , double precision ) IS 'args: rast, gridx, gridy, algorithm=NearestNeighbour, maxerr=0.125, scalex=DEFAULT 0, scaley=DEFAULT 0 - Resample a raster by snapping it to a grid. New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';
			
COMMENT ON FUNCTION ST_SnapToGrid(raster , double precision , double precision , double precision , double precision , text , double precision ) IS 'args: rast, gridx, gridy, scalex, scaley, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by snapping it to a grid. New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';
			
COMMENT ON FUNCTION ST_SnapToGrid(raster , double precision , double precision , double precision , text , double precision ) IS 'args: rast, gridx, gridy, scalexy, algorithm=NearestNeighbour, maxerr=0.125 - Resample a raster by snapping it to a grid. New pixel values are computed using the NearestNeighbor (english or american spelling), Bilinear, Cubic, CubicSpline or Lanczos resampling algorithm. Default is NearestNeighbor.';
			
COMMENT ON FUNCTION ST_Transform(raster , integer , double precision , double precision , text , double precision ) IS 'args: rast, srid, scalex, scaley, algorithm=NearestNeighbor, maxerr=0.125 - Reprojects a raster in a known spatial reference system to another known spatial reference system using specified resampling algorithm. Options are NearestNeighbor, Bilinear, Cubic, CubicSpline, Lanczos defaulting to NearestNeighbor.';
			
COMMENT ON FUNCTION ST_Transform(raster , integer , text , double precision , double precision , double precision ) IS 'args: rast, srid, algorithm=NearestNeighbor, maxerr=0.125, scalex, scaley - Reprojects a raster in a known spatial reference system to another known spatial reference system using specified resampling algorithm. Options are NearestNeighbor, Bilinear, Cubic, CubicSpline, Lanczos defaulting to NearestNeighbor.';
			
COMMENT ON FUNCTION ST_SetBandNoDataValue(raster , double precision ) IS 'args: rast, nodatavalue - Sets the value for the given band that represents no data. Band 1 is assumed if no band is specified. To mark a band as having no nodata value, set the nodata value = NULL.';
			
COMMENT ON FUNCTION ST_SetBandNoDataValue(raster , integer , double precision , boolean ) IS 'args: rast, band, nodatavalue, forcechecking=false - Sets the value for the given band that represents no data. Band 1 is assumed if no band is specified. To mark a band as having no nodata value, set the nodata value = NULL.';
			
COMMENT ON FUNCTION ST_SetBandIsNoData(raster , integer ) IS 'args: rast, band=1 - Sets the isnodata flag of the band to TRUE. You may want to call this function if ST_BandIsNoData(rast, band) != ST_BandIsNodata(rast, band, TRUE). This is, if the isnodata flag is dirty. Band 1 is assumed if no band is specified.';
			
COMMENT ON FUNCTION ST_Count(raster , integer , boolean ) IS 'args: rast, nband=1, exclude_nodata_value=true - Returns the number of pixels in a given band of a raster or raster coverage. If no band is specified defaults to band 1. If exclude_nodata_value is set to true, will only count pixels that are not equal to the nodata value.';
			
COMMENT ON FUNCTION ST_Count(raster , boolean ) IS 'args: rast, exclude_nodata_value - Returns the number of pixels in a given band of a raster or raster coverage. If no band is specified defaults to band 1. If exclude_nodata_value is set to true, will only count pixels that are not equal to the nodata value.';
			
COMMENT ON FUNCTION ST_Count(text , text , integer , boolean ) IS 'args: rastertable, rastercolumn, nband=1, exclude_nodata_value=true - Returns the number of pixels in a given band of a raster or raster coverage. If no band is specified defaults to band 1. If exclude_nodata_value is set to true, will only count pixels that are not equal to the nodata value.';
			
COMMENT ON FUNCTION ST_Count(text , text , boolean ) IS 'args: rastertable, rastercolumn, exclude_nodata_value - Returns the number of pixels in a given band of a raster or raster coverage. If no band is specified defaults to band 1. If exclude_nodata_value is set to true, will only count pixels that are not equal to the nodata value.';
			
COMMENT ON FUNCTION ST_Histogram(raster , integer , boolean , integer , double precision[] , boolean ) IS 'args: rast, nband=1, exclude_nodata_value=true, bins=autocomputed, width=NULL, right=false - Returns a set of histogram summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';
			
COMMENT ON FUNCTION ST_Histogram(raster , integer , integer , double precision[] , boolean ) IS 'args: rast, nband, bins, width=NULL, right=false - Returns a set of histogram summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';
			
COMMENT ON FUNCTION ST_Histogram(raster , integer , boolean , integer , boolean ) IS 'args: rast, nband, exclude_nodata_value, bins, right - Returns a set of histogram summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';
			
COMMENT ON FUNCTION ST_Histogram(raster , integer , integer , boolean ) IS 'args: rast, nband, bins, right - Returns a set of histogram summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';
			
COMMENT ON FUNCTION ST_Histogram(text , text , integer , integer , boolean ) IS 'args: rastertable, rastercolumn, nband, bins, right - Returns a set of histogram summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';
			
COMMENT ON FUNCTION ST_Histogram(text , text , integer , boolean , integer , boolean ) IS 'args: rastertable, rastercolumn, nband, exclude_nodata_value, bins, right - Returns a set of histogram summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';
			
COMMENT ON FUNCTION ST_Histogram(text , text , integer , boolean , integer , double precision[] , boolean ) IS 'args: rastertable, rastercolumn, nband=1, exclude_nodata_value=true, bins=autocomputed, width=NULL, right=false - Returns a set of histogram summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';
			
COMMENT ON FUNCTION ST_Histogram(text , text , integer , integer , double precision[] , boolean ) IS 'args: rastertable, rastercolumn, nband=1, bins, width=NULL, right=false - Returns a set of histogram summarizing a raster or raster coverage data distribution separate bin ranges. Number of bins are autocomputed if not specified.';
			
COMMENT ON FUNCTION ST_Quantile(raster , integer , boolean , double precision[] ) IS 'args: rast, nband=1, exclude_nodata_value=true, quantiles=NULL - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';
			
COMMENT ON FUNCTION ST_Quantile(raster , double precision[] ) IS 'args: rast, quantiles - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';
			
COMMENT ON FUNCTION ST_Quantile(raster , integer , double precision[] ) IS 'args: rast, nband, quantiles - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';
			
COMMENT ON FUNCTION ST_Quantile(raster , double precision ) IS 'args: rast, quantile - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';
			
COMMENT ON FUNCTION ST_Quantile(raster , boolean , double precision ) IS 'args: rast, exclude_nodata_value, quantile=NULL - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';
			
COMMENT ON FUNCTION ST_Quantile(raster , integer , double precision ) IS 'args: rast, nband, quantile - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';
			
COMMENT ON FUNCTION ST_Quantile(raster , integer , boolean , double precision ) IS 'args: rast, nband, exclude_nodata_value, quantile - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';
			
COMMENT ON FUNCTION ST_Quantile(raster , integer , double precision ) IS 'args: rast, nband, quantile - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';
			
COMMENT ON FUNCTION ST_Quantile(text , text , integer , boolean , double precision[] ) IS 'args: rastertable, rastercolumn, nband=1, exclude_nodata_value=true, quantiles=NULL - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';
			
COMMENT ON FUNCTION ST_Quantile(text , text , integer , double precision[] ) IS 'args: rastertable, rastercolumn, nband, quantiles - Compute quantiles for a raster or raster table coverage in the context of the sample or population. Thus, a value could be examined to be at the rasters 25%, 50%, 75% percentile.';
			
COMMENT ON FUNCTION ST_SummaryStats(text , text , boolean ) IS 'args: rastertable, rastercolumn, exclude_nodata_value - Returns summary stats consisting of count,sum,mean,stddev,min,max for a given raster band of a raster or raster coverage. Band 1 is assumed is no band is specified.';
			
COMMENT ON FUNCTION ST_SummaryStats(raster , boolean ) IS 'args: rast, exclude_nodata_value - Returns summary stats consisting of count,sum,mean,stddev,min,max for a given raster band of a raster or raster coverage. Band 1 is assumed is no band is specified.';
			
COMMENT ON FUNCTION ST_SummaryStats(text , text , integer , boolean ) IS 'args: rastertable, rastercolumn, nband=1, exclude_nodata_value=true - Returns summary stats consisting of count,sum,mean,stddev,min,max for a given raster band of a raster or raster coverage. Band 1 is assumed is no band is specified.';
			
COMMENT ON FUNCTION ST_SummaryStats(raster , integer , boolean ) IS 'args: rast, nband, exclude_nodata_value - Returns summary stats consisting of count,sum,mean,stddev,min,max for a given raster band of a raster or raster coverage. Band 1 is assumed is no band is specified.';
			
COMMENT ON FUNCTION ST_ValueCount(raster , integer , boolean , double precision[] , double precision ) IS 'args: rast, nband=1, exclude_nodata_value=true, searchvalues=NULL, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_ValueCount(raster , integer , double precision[] , double precision ) IS 'args: rast, nband, searchvalues, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_ValueCount(raster , double precision[] , double precision ) IS 'args: rast, searchvalues, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_ValueCount(raster , double precision , double precision ) IS 'args: rast, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_ValueCount(raster , integer , boolean , double precision , double precision ) IS 'args: rast, nband, exclude_nodata_value, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_ValueCount(raster , integer , double precision , double precision ) IS 'args: rast, nband, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_ValueCount(text , text , integer , boolean , double precision[] , double precision ) IS 'args: rastertable, rastercolumn, nband=1, exclude_nodata_value=true, searchvalues=NULL, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_ValueCount(text , text , double precision[] , double precision ) IS 'args: rastertable, rastercolumn, searchvalues, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_ValueCount(text , text , integer , double precision[] , double precision ) IS 'args: rastertable, rastercolumn, nband, searchvalues, roundto=0, OUT value, OUT count - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_ValueCount(text , text , integer , boolean , double precision , double precision ) IS 'args: rastertable, rastercolumn, nband, exclude_nodata_value, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_ValueCount(text , text , double precision , double precision ) IS 'args: rastertable, rastercolumn, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_ValueCount(text , text , integer , double precision , double precision ) IS 'args: rastertable, rastercolumn, nband, searchvalue, roundto=0 - Returns a set of records containing a pixel band value and count of the number of pixels in a given band of a raster (or a raster coverage) that have a given set of values. If no band is specified defaults to band 1. By default nodata value pixels are not counted. and all other values in the pixel are output and pixel band values are rounded to the nearest integer.';
			
COMMENT ON FUNCTION ST_AsBinary(raster ) IS 'args: rast - Return the Well-Known Binary (WKB) representation of the raster without SRID meta data.';
			
COMMENT ON FUNCTION ST_AsGDALRaster(raster , text , text[] , integer ) IS 'args: rast, format, options=NULL, srid=sameassource - Return the raster tile in the designated GDAL Raster format. Raster formats are one of those supported by your compiled library. Use ST_GDALRasters() to get a list of formats supported by your library.';
			
COMMENT ON FUNCTION ST_AsJPEG(raster , text[] ) IS 'args: rast, options=NULL - Return the raster tile selected bands as a single Joint Photographic Exports Group (JPEG) image (byte array). If no band is specified and 1 or more than 3 bands, then only the first band is used. If only 3 bands then all 3 bands are used and mapped to RGB.';
			
COMMENT ON FUNCTION ST_AsJPEG(raster , integer , integer ) IS 'args: rast, nband, quality - Return the raster tile selected bands as a single Joint Photographic Exports Group (JPEG) image (byte array). If no band is specified and 1 or more than 3 bands, then only the first band is used. If only 3 bands then all 3 bands are used and mapped to RGB.';
			
COMMENT ON FUNCTION ST_AsJPEG(raster , integer , text[] ) IS 'args: rast, nband, options=NULL - Return the raster tile selected bands as a single Joint Photographic Exports Group (JPEG) image (byte array). If no band is specified and 1 or more than 3 bands, then only the first band is used. If only 3 bands then all 3 bands are used and mapped to RGB.';
			
COMMENT ON FUNCTION ST_AsJPEG(raster , integer[] , text[] ) IS 'args: rast, nbands, options=NULL - Return the raster tile selected bands as a single Joint Photographic Exports Group (JPEG) image (byte array). If no band is specified and 1 or more than 3 bands, then only the first band is used. If only 3 bands then all 3 bands are used and mapped to RGB.';
			
COMMENT ON FUNCTION ST_AsJPEG(raster , integer[] , integer ) IS 'args: rast, nbands, quality - Return the raster tile selected bands as a single Joint Photographic Exports Group (JPEG) image (byte array). If no band is specified and 1 or more than 3 bands, then only the first band is used. If only 3 bands then all 3 bands are used and mapped to RGB.';
			
COMMENT ON FUNCTION ST_AsPNG(raster , text[] ) IS 'args: rast, options=NULL - Return the raster tile selected bands as a single portable network graphics (PNG) image (byte array). If 1, 3, or 4 bands in raster and no bands are specified, then all bands are used. If more 2 or more than 4 bands and no bands specified, then only band 1 is used. Bands are mapped to RGB or RGBA space.';
			
COMMENT ON FUNCTION ST_AsPNG(raster , integer , integer ) IS 'args: rast, nband, compression - Return the raster tile selected bands as a single portable network graphics (PNG) image (byte array). If 1, 3, or 4 bands in raster and no bands are specified, then all bands are used. If more 2 or more than 4 bands and no bands specified, then only band 1 is used. Bands are mapped to RGB or RGBA space.';
			
COMMENT ON FUNCTION ST_AsPNG(raster , integer , text[] ) IS 'args: rast, nband, options=NULL - Return the raster tile selected bands as a single portable network graphics (PNG) image (byte array). If 1, 3, or 4 bands in raster and no bands are specified, then all bands are used. If more 2 or more than 4 bands and no bands specified, then only band 1 is used. Bands are mapped to RGB or RGBA space.';
			
COMMENT ON FUNCTION ST_AsPNG(raster , integer[] , integer ) IS 'args: rast, nbands, compression - Return the raster tile selected bands as a single portable network graphics (PNG) image (byte array). If 1, 3, or 4 bands in raster and no bands are specified, then all bands are used. If more 2 or more than 4 bands and no bands specified, then only band 1 is used. Bands are mapped to RGB or RGBA space.';
			
COMMENT ON FUNCTION ST_AsPNG(raster , integer[] , text[] ) IS 'args: rast, nbands, options=NULL - Return the raster tile selected bands as a single portable network graphics (PNG) image (byte array). If 1, 3, or 4 bands in raster and no bands are specified, then all bands are used. If more 2 or more than 4 bands and no bands specified, then only band 1 is used. Bands are mapped to RGB or RGBA space.';
			
COMMENT ON FUNCTION ST_AsTIFF(raster , text[] , integer ) IS 'args: rast, options='', srid=sameassource - Return the raster selected bands as a single TIFF image (byte array). If no band is specified, then will try to use all bands.';
			
COMMENT ON FUNCTION ST_AsTIFF(raster , text , integer ) IS 'args: rast, compression='', srid=sameassource - Return the raster selected bands as a single TIFF image (byte array). If no band is specified, then will try to use all bands.';
			
COMMENT ON FUNCTION ST_AsTIFF(raster , integer[] , text , integer ) IS 'args: rast, nbands, compression='', srid=sameassource - Return the raster selected bands as a single TIFF image (byte array). If no band is specified, then will try to use all bands.';
			
COMMENT ON FUNCTION ST_AsTIFF(raster , integer[] , text[] , integer ) IS 'args: rast, nbands, options, srid=sameassource - Return the raster selected bands as a single TIFF image (byte array). If no band is specified, then will try to use all bands.';
			
COMMENT ON FUNCTION Box3D(raster ) IS 'args: rast - Returns the box 3d representation of the enclosing box of the raster.';
			
COMMENT ON FUNCTION ST_Clip(raster , geometry , double precision[] , boolean ) IS 'args: rast, geom, nodataval=NULL, crop=true - Returns the raster clipped by the input geometry. If no band is specified all bands are returned. If crop is not specified, true is assumed meaning the output raster is cropped.';
			
COMMENT ON FUNCTION ST_Clip(raster , geometry , boolean ) IS 'args: rast, geom, crop - Returns the raster clipped by the input geometry. If no band is specified all bands are returned. If crop is not specified, true is assumed meaning the output raster is cropped.';
			
COMMENT ON FUNCTION ST_Clip(raster , integer , geometry , boolean ) IS 'args: rast, band, geom, crop - Returns the raster clipped by the input geometry. If no band is specified all bands are returned. If crop is not specified, true is assumed meaning the output raster is cropped.';
			
COMMENT ON FUNCTION ST_ConvexHull(raster ) IS 'args: rast - Return the convex hull geometry of the raster including pixel values equal to BandNoDataValue. For regular shaped and non-skewed rasters, this gives the same result as ST_Envelope so only useful for irregularly shaped or skewed rasters.';
			
COMMENT ON FUNCTION ST_DumpAsPolygons(raster , integer ) IS 'args: rast, band_num=1 - Returns a set of geomval (geom,val) rows, from a given raster band. If no band number is specified, band num defaults to 1.';
			
COMMENT ON FUNCTION ST_Envelope(raster ) IS 'args: rast - Returns the polygon representation of the extent of the raster.';
			
COMMENT ON FUNCTION ST_HillShade(raster , integer , text , double precision , double precision , double precision , double precision ) IS 'args: rast, band, pixeltype, azimuth, altitude, max_bright=255, elevation_scale=1 - Returns the hypothetical illumination of an elevation raster band using provided azimuth, altitude, brightness and elevation scale inputs. Useful for visualizing terrain.';
			
COMMENT ON FUNCTION ST_Aspect(raster , integer , text ) IS 'args: rast, band, pixeltype - Returns the surface aspect of an elevation raster band. Useful for analyzing terrain.';
			
COMMENT ON FUNCTION ST_Slope(raster , integer , text ) IS 'args: rast, band, pixeltype - Returns the surface slope of an elevation raster band. Useful for analyzing terrain.';
			
COMMENT ON FUNCTION ST_Intersection(geometry , raster , integer ) IS 'args: geom, rast, band_num=1 - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';
			
COMMENT ON FUNCTION ST_Intersection(raster , geometry ) IS 'args: rast, geom - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';
			
COMMENT ON FUNCTION ST_Intersection(raster , integer , geometry ) IS 'args: rast, band_num, geom - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';
			
COMMENT ON FUNCTION ST_Intersection(raster , raster , double precision[] ) IS 'args: rast1, rast2, nodataval - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';
			
COMMENT ON FUNCTION ST_Intersection(raster , raster , text , double precision[] ) IS 'args: rast1, rast2, returnband=''BOTH'', nodataval=NULL - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';
			
COMMENT ON FUNCTION ST_Intersection(raster , integer , raster , integer , double precision[] ) IS 'args: rast1, band_num1, rast2, band_num2, nodataval - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';
			
COMMENT ON FUNCTION ST_Intersection(raster , integer , raster , integer , text , double precision[] ) IS 'args: rast1, band_num1, rast2, band_num2, returnband=''BOTH'', nodataval=NULL - Returns a raster or a set of geometry-pixelvalue pairs representing the shared portion of two rasters or the geometrical intersection of a vectorization of the raster and a geometry.';
			
COMMENT ON FUNCTION ST_MapAlgebraExpr(raster , integer , text , text , double precision ) IS 'args: rast, band, pixeltype, expression, nodataval=NULL - 1 raster band version: Creates a new one band raster formed by applying a valid PostgreSQL algebraic operation on the input raster band and of pixeltype provided. Band 1 is assumed if no band is specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraExpr(raster , text , text , double precision ) IS 'args: rast, pixeltype, expression, nodataval=NULL - 1 raster band version: Creates a new one band raster formed by applying a valid PostgreSQL algebraic operation on the input raster band and of pixeltype provided. Band 1 is assumed if no band is specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraExpr(raster , raster , text , text , text , text , text , double precision ) IS 'args: rast1, rast2, expression, pixeltype=same_as_rast1_band, extenttype=INTERSECTION, nodata1expr=NULL, nodata2expr=NULL, nodatanodataval=NULL - 2 raster band version: Creates a new one band raster formed by applying a valid PostgreSQL algebraic operation on the two input raster bands and of pixeltype provided. band 1 of each raster is assumed if no band numbers are specified. The resulting raster will be aligned (scale, skew and pixel corners) on the grid defined by the first raster and have its extent defined by the "extenttype" parameter. Values for "extenttype" can be: INTERSECTION, UNION, FIRST, SECOND.';
			
COMMENT ON FUNCTION ST_MapAlgebraExpr(raster , integer , raster , integer , text , text , text , text , text , double precision ) IS 'args: rast1, band1, rast2, band2, expression, pixeltype=same_as_rast1_band, extenttype=INTERSECTION, nodata1expr=NULL, nodata2expr=NULL, nodatanodataval=NULL - 2 raster band version: Creates a new one band raster formed by applying a valid PostgreSQL algebraic operation on the two input raster bands and of pixeltype provided. band 1 of each raster is assumed if no band numbers are specified. The resulting raster will be aligned (scale, skew and pixel corners) on the grid defined by the first raster and have its extent defined by the "extenttype" parameter. Values for "extenttype" can be: INTERSECTION, UNION, FIRST, SECOND.';
			
COMMENT ON FUNCTION ST_MapAlgebraFct(raster, regprocedure) IS 'args: rast, onerasteruserfunc - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraFct(raster, regprocedure, text[]) IS 'args: rast, onerasteruserfunc, VARIADIC args - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraFct(raster, text, regprocedure) IS 'args: rast, pixeltype, onerasteruserfunc - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraFct(raster, text, regprocedure, text[]) IS 'args: rast, pixeltype, onerasteruserfunc, VARIADIC args - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraFct(raster, integer, regprocedure) IS 'args: rast, band, onerasteruserfunc - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraFct(raster, integer, regprocedure, text[]) IS 'args: rast, band, onerasteruserfunc, VARIADIC args - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraFct(raster, integer, text, regprocedure) IS 'args: rast, band, pixeltype, onerasteruserfunc - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraFct(raster, integer, text, regprocedure, text[]) IS 'args: rast, band, pixeltype, onerasteruserfunc, VARIADIC args - 1 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the input raster band and of pixeltype prodived. Band 1 is assumed if no band is specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraFct(raster, raster, regprocedure, text, text, text[]) IS 'args: rast1, rast2, tworastuserfunc, pixeltype=same_as_rast1, extenttype=INTERSECTION, VARIADIC userargs - 2 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the 2 input raster bands and of pixeltype prodived. Band 1 is assumed if no band is specified. Extent type defaults to INTERSECTION if not specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraFct(raster, integer, raster, integer, regprocedure, text, text, text[]) IS 'args: rast1, band1, rast2, band2, tworastuserfunc, pixeltype=same_as_rast1, extenttype=INTERSECTION, VARIADIC userargs - 2 band version - Creates a new one band raster formed by applying a valid PostgreSQL function on the 2 input raster bands and of pixeltype prodived. Band 1 is assumed if no band is specified. Extent type defaults to INTERSECTION if not specified.';
			
COMMENT ON FUNCTION ST_MapAlgebraFctNgb(raster , integer , text , integer , integer , regprocedure , text , text[] ) IS 'args: rast, band, pixeltype, ngbwidth, ngbheight, onerastngbuserfunc, nodatamode, VARIADIC args - 1-band version: Map Algebra Nearest Neighbor using user-defined PostgreSQL function. Return a raster which values are the result of a PLPGSQL user function involving a neighborhood of values from the input raster band.';
			
COMMENT ON FUNCTION ST_Polygon(raster , integer ) IS 'args: rast, band_num=1 - Returns a polygon geometry formed by the union of pixels that have a pixel value that is not no data value. If no band number is specified, band num defaults to 1.';
			
COMMENT ON FUNCTION ST_Reclass(raster , integer , text , text , double precision ) IS 'args: rast, nband, reclassexpr, pixeltype, nodataval=NULL - Creates a new raster composed of band types reclassified from original. The nband is the band to be changed. If nband is not specified assumed to be 1. All other bands are returned unchanged. Use case: convert a 16BUI band to a 8BUI and so forth for simpler rendering as viewable formats.';
			
COMMENT ON FUNCTION ST_Reclass(raster , reclassarg[] ) IS 'args: rast, VARIADIC reclassargset - Creates a new raster composed of band types reclassified from original. The nband is the band to be changed. If nband is not specified assumed to be 1. All other bands are returned unchanged. Use case: convert a 16BUI band to a 8BUI and so forth for simpler rendering as viewable formats.';
			
COMMENT ON FUNCTION ST_Reclass(raster , text , text ) IS 'args: rast, reclassexpr, pixeltype - Creates a new raster composed of band types reclassified from original. The nband is the band to be changed. If nband is not specified assumed to be 1. All other bands are returned unchanged. Use case: convert a 16BUI band to a 8BUI and so forth for simpler rendering as viewable formats.';
			
COMMENT ON FUNCTION ST_Union(setof raster ) IS 'args: rast - Returns the union of a set of raster tiles into a single raster composed of 1 band. If no band is specified for unioning, band num 1 is assumed. The resulting rasters extent is the extent of the whole set. In the case of intersection, the resulting value is defined by p_expression which is one of the following: LAST - the default when none is specified, MEAN, SUM, FIRST, MAX, MIN.';
			
COMMENT ON AGGREGATE ST_Union(raster, integer) IS 'args: rast, band_num - Returns the union of a set of raster tiles into a single raster composed of 1 band. If no band is specified for unioning, band num 1 is assumed. The resulting rasters extent is the extent of the whole set. In the case of intersection, the resulting value is defined by p_expression which is one of the following: LAST - the default when none is specified, MEAN, SUM, FIRST, MAX, MIN.';
			
COMMENT ON AGGREGATE ST_Union(raster, text) IS 'args: rast, p_expression - Returns the union of a set of raster tiles into a single raster composed of 1 band. If no band is specified for unioning, band num 1 is assumed. The resulting rasters extent is the extent of the whole set. In the case of intersection, the resulting value is defined by p_expression which is one of the following: LAST - the default when none is specified, MEAN, SUM, FIRST, MAX, MIN.';
			
COMMENT ON AGGREGATE ST_Union(raster, integer, text) IS 'args: rast, band_num, p_expression - Returns the union of a set of raster tiles into a single raster composed of 1 band. If no band is specified for unioning, band num 1 is assumed. The resulting rasters extent is the extent of the whole set. In the case of intersection, the resulting value is defined by p_expression which is one of the following: LAST - the default when none is specified, MEAN, SUM, FIRST, MAX, MIN.';
			
COMMENT ON FUNCTION ST_Min4ma(float8[][], text , text[]) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the minimum pixel value in a neighborhood.';
			
COMMENT ON FUNCTION ST_Max4ma(float8[][], text, text[]) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the maximum pixel value in a neighborhood.';
			
COMMENT ON FUNCTION ST_Sum4ma(float8[][], text, text[]) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the sum of all pixel values in a neighborhood.';
			
COMMENT ON FUNCTION ST_Mean4ma(float8[][], text, text[]) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the mean pixel value in a neighborhood.';
			
COMMENT ON FUNCTION ST_Range4ma(float8[][], text, text[]) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the range of pixel values in a neighborhood.';
			
COMMENT ON FUNCTION ST_Distinct4ma(float8[][], text, text[]) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the number of unique pixel values in a neighborhood.';
			
COMMENT ON FUNCTION ST_StdDev4ma(float8[][], text , text[]) IS 'args: matrix, nodatamode, VARIADIC args - Raster processing function that calculates the standard deviation of pixel values in a neighborhood.';
			
COMMENT ON FUNCTION ST_Intersects(raster , integer , raster , integer ) IS 'args: rasta, nbanda, rastb, nbandb - Return true if the raster spatially intersects a separate raster or geometry. If the band number is not provided (or set to NULL), only the convex hull of the raster is considered in the test. If the band number is provided, only those pixels with value (not NODATA) are considered in the test.';
			
COMMENT ON FUNCTION ST_Intersects(raster , raster ) IS 'args: rasta, rastb - Return true if the raster spatially intersects a separate raster or geometry. If the band number is not provided (or set to NULL), only the convex hull of the raster is considered in the test. If the band number is provided, only those pixels with value (not NODATA) are considered in the test.';
			
COMMENT ON FUNCTION ST_Intersects(raster , integer , geometry ) IS 'args: rast, nband, geommin - Return true if the raster spatially intersects a separate raster or geometry. If the band number is not provided (or set to NULL), only the convex hull of the raster is considered in the test. If the band number is provided, only those pixels with value (not NODATA) are considered in the test.';
			
COMMENT ON FUNCTION ST_Intersects(raster , geometry , integer ) IS 'args: rast, geommin, nband=NULL - Return true if the raster spatially intersects a separate raster or geometry. If the band number is not provided (or set to NULL), only the convex hull of the raster is considered in the test. If the band number is provided, only those pixels with value (not NODATA) are considered in the test.';
			
COMMENT ON FUNCTION ST_Intersects(geometry , raster , integer ) IS 'args: geommin, rast, nband=NULL - Return true if the raster spatially intersects a separate raster or geometry. If the band number is not provided (or set to NULL), only the convex hull of the raster is considered in the test. If the band number is provided, only those pixels with value (not NODATA) are considered in the test.';
			
COMMENT ON FUNCTION ST_SameAlignment(raster , raster ) IS 'args: rastA, rastB - Returns true if rasters have same skew, scale, spatial ref and false if they dont with notice detailing issue.';
			
COMMENT ON FUNCTION ST_SameAlignment(double precision , double precision , double precision , double precision , double precision , double precision , double precision , double precision , double precision , double precision , double precision , double precision ) IS 'args: ulx1, uly1, scalex1, scaley1, skewx1, skewy1, ulx2, uly2, scalex2, scaley2, skewx2, skewy2 - Returns true if rasters have same skew, scale, spatial ref and false if they dont with notice detailing issue.';
			
    COMMENT ON TYPE geomval IS 'postgis raster type: A spatial datatype with two fields - geom (holding a geometry object) and val (holding a double precision pixel value from a raster band).';
            
        
    COMMENT ON TYPE histogram IS 'postgis raster type: A composite type used as record output of the ST_Histogram and ST_ApproxHistogram functions.';
            
        
    COMMENT ON TYPE raster IS 'postgis raster type: raster spatial data type.';
            
        
    COMMENT ON TYPE reclassarg IS 'postgis raster type: A composite type used as input into the ST_Reclass function defining the behavior of reclassification.';
            
        
    COMMENT ON TYPE summarystats IS 'postgis raster type: A composite type used as output of the ST_SummaryStats function.';
            
        