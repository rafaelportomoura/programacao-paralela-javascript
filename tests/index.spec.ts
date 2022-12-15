import { expect } from 'chai';
import soma from '../src/index';

describe('Index', () => {
  it('SUCCESS: Soma', () => {
    expect(soma(1, 2)).to.eql(3);
  });
});
