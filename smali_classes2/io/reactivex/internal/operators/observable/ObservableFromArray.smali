.class public final Lio/reactivex/internal/operators/observable/ObservableFromArray;
.super Lio/reactivex/Observable;
.source "ObservableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 29
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableFromArray;->array:[Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;-><init>(Lio/reactivex/Observer;[Ljava/lang/Object;)V

    .line 31
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 33
    iget-boolean p0, v0, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->fusionMode:Z

    if-eqz p0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableFromArray$FromArrayDisposable;->run()V

    return-void
.end method
