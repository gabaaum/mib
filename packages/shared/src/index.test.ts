import { describe, it, expect } from 'vitest'
import { APP_NAME, APP_VERSION } from './index'

describe('shared', () => {
  it('APP_NAME should be MIB', () => {
    expect(APP_NAME).toBe('MIB')
  })

  it('APP_VERSION should be 0.0.1', () => {
    expect(APP_VERSION).toBe('0.0.1')
  })
})
