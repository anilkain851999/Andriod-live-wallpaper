import { registerPlugin } from '@capacitor/core';

import type { WallpaperSetterPlugin } from './definitions';

const WallpaperSetter = registerPlugin<WallpaperSetterPlugin>('WallpaperSetter', {
  web: () => import('./web').then((m) => new m.WallpaperSetterWeb()),
});

export * from './definitions';
export { WallpaperSetter };
