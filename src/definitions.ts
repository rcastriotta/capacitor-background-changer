export interface BackgroundChangerPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
