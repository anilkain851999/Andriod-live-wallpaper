import { WebPlugin } from '@capacitor/core';

import type { WallpaperSetterPlugin } from './definitions';

export class WallpaperSetterWeb extends WebPlugin implements WallpaperSetterPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
