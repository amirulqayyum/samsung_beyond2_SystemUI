.class final Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;
.super Ljava/lang/Object;
.source "MaybeDelayOtherPublisher.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DelayMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final other:Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field final otherSource:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TU;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lorg/reactivestreams/Publisher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;",
            "Lorg/reactivestreams/Publisher<",
            "TU;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;-><init>(Lio/reactivex/MaybeObserver;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->other:Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;

    .line 56
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->otherSource:Lorg/reactivestreams/Publisher;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 62
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 63
    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->other:Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;

    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 68
    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->other:Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onComplete()V
    .locals 1

    .line 96
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 97
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->subscribeNext()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 89
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 90
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->other:Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;

    iput-object p1, v0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;->error:Ljava/lang/Throwable;

    .line 91
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->subscribeNext()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 76
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->other:Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;

    iget-object p1, p1, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;->downstream:Lio/reactivex/MaybeObserver;

    invoke-interface {p1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->other:Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;

    iput-object p1, v0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;->value:Ljava/lang/Object;

    .line 84
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->subscribeNext()V

    return-void
.end method

.method subscribeNext()V
    .locals 1

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->otherSource:Lorg/reactivestreams/Publisher;

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$DelayMaybeObserver;->other:Lio/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
