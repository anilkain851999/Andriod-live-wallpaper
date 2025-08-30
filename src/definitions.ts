export interface WallpaperSetterPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
