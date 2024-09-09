import { registerPlugin } from '@capacitor/core';

import type { BackgroundChangerPlugin } from './definitions';

const BackgroundChanger = registerPlugin<BackgroundChangerPlugin>(
  'BackgroundChanger',
  {
    web: () => import('./web').then(m => new m.BackgroundChangerWeb()),
  },
);

export * from './definitions';
export { BackgroundChanger };
