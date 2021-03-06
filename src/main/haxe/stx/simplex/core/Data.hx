package stx.simplex.core;

typedef Catamorphism<I,R>       = stx.simplex.core.data.Catamorphism<I,R>;
typedef Cause                   = stx.simplex.core.data.Cause;
typedef Channel<T>              = stx.simplex.core.data.Channel<T>;
typedef ChannelOp<T>            = stx.simplex.core.data.ChannelOp<T>;
typedef Conclude<R>             = stx.simplex.core.data.Conclude<R>;
typedef Consumer<T,R>           = stx.simplex.core.data.Consumer<T,R>;
typedef Control<T>              = stx.simplex.core.data.Control<T>;
typedef Interleave<L,R,O>       = stx.simplex.core.data.Interleave<L,R,O>;
typedef Muxer                   = stx.simplex.core.data.Muxer;
typedef Pipe<I,O>               = stx.simplex.core.data.Pipe<I,O>;
typedef Process<I,O>            = stx.simplex.core.data.Process<I,O>;
typedef Producer<O,R>           = stx.simplex.core.data.Producer<O,R>;
typedef Return<R>               = stx.simplex.core.data.Return<R>;
typedef Sampler<I,O,R>          = stx.simplex.core.data.Sampler<I,O,R>;
typedef Simplex<I,O,R>          = stx.simplex.core.data.Simplex<I,O,R>;
typedef Sink<I>                 = stx.simplex.core.data.Sink<I>;
typedef Source<O>               = stx.simplex.core.data.Source<O>;