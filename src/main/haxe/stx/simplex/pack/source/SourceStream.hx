package stx.simplex.pack.source;

import tink.core.Noise;
import tink.core.Future;

import stx.simplex.core.Data;
using stx.simplex.Package;

import tink.streams.StreamStep;
import tink.streams.Stream;
import tink.streams.Accumulator;

class SourceStream<T> extends Generator<T>{
  public function new(data:Source<T>){
    super(
      function(){
        var n = Future.trigger();
        function recurse(){
          switch(data){
            case Emit(head,tail):
              data = tail;
              n.trigger(Data(head));
            case Wait(arw):
              data = arw(Noise);
              recurse();
            case Held(ft):
              ft.handle(
                function(x){
                  data = x;
                  recurse();
                }
              );
            case Halt(e):
              data = Halt(e);
              n.trigger(End);
          }
        }
        recurse();
        return n.asFuture();
      }
    );
  }
}