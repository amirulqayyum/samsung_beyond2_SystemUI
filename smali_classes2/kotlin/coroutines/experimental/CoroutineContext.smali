.class public interface abstract Lkotlin/coroutines/experimental/CoroutineContext;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/experimental/CoroutineContext$Element;,
        Lkotlin/coroutines/experimental/CoroutineContext$Key;,
        Lkotlin/coroutines/experimental/CoroutineContext$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/experimental/CoroutineContext;"
        }
    .end annotation
.end method

.method public abstract plus(Lkotlin/coroutines/experimental/CoroutineContext;)Lkotlin/coroutines/experimental/CoroutineContext;
.end method
