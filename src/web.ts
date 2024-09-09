import { WebPlugin } from '@capacitor/core';

import type { BackgroundChangerPlugin } from './definitions';

export class BackgroundChangerWeb
  extends WebPlugin
  implements BackgroundChangerPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
